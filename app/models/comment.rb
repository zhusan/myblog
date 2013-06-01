class Comment < ActiveRecord::Base
  belongs_to :blog

  # attr_accessible :title, :body
   attr_accessible :name,:email, :content,:blog_id

   validates :name,:email,:blog_id, :presence => true
end
