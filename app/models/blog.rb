class Blog < ActiveRecord::Base
  include ActsAsTaggableOn
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
  attr_accessible :title, :content,:user_id,:tag_list
  belongs_to :user
  has_many :comments

  validates :title, :content, :presence => true
  validates :title, :uniqueness => {:allow_blank => true}
  before_save :upload_image
  after_find :refresh_download_token

  def upload_image
    images = self.content.scan(/<img[\w\W].+?>/)
    images.each do |img|
      /([\w\W].+?src=\")([\w\W].+?)(\"[\w\W].+?)/.match(img)
      src = $2
      unless src.include?(Setting.qiniu.image_site)
        image_name = src.split("/").last
        new_src = Setting.qiniu.image_site + image_name
        path = "public/" + src
        pp path
        QiniuUpload.upload_sql_file(path,Setting.qiniu.image_backet,image_name)
        self.content = self.content.sub(src,new_src)
      end
    end
  end

  def refresh_download_token
    download_token = Qiniu::RS.generate_download_token({:expires_in => 3600, :pattern => '*/*'})
    images = self.try(:content).scan(/<img[\w\W].+?>/) rescue []
    images.each do |img|
      /([\w\W].+?src=\")([\w\W].+?)(\"[\w\W].+?)/.match(img)
      src = $2
      if  src.include?("?token=")
        new_src = src.split("?token=")[0].to_s + "?token=" +download_token
      else
        new_src = src + "?token=" +download_token
      end
      self.content = self.content.sub(src,new_src)
    end
  end

  def self.get_conn(options)
    conn = [["1=1"]]
    tables = []
    #归档
    if options[:time].present?
      real_time = format_cn_time(options[:time])
      conn[0] << "blogs.created_at > ? and blogs.created_at < ?"
      conn << (real_time + "01").to_date.beginning_of_month
      conn << (real_time + "01").to_date.end_of_month
    end
    #标签
    if options[:tag].present?
      conn[0] << "taggings.tag_id = ?"
      conn << options[:tag]
      tables << :taggings
    end
    conn[0] = conn[0].join(" and ")
    return conn,tables
  end

  # 获取10个使用最多的tag名称
  def self.get_most_use_tags
    Tagging.group("tag_id").order("count(*) desc").limit(10).collect{|t| t.tag.try(:name)}
  end
  #获取所有标签以及每个标签的文章数
  def self.get_all_tags
    Tagging.select("tag_id,count(*) as count_tag").group("tag_id").order("count(*) desc")
  end

end
