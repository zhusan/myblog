module ApplicationHelper
  include ActsAsTaggableOn

  def errors_for(object, message=nil)  
    html = "" 
    object_name = object.class.name.humanize.downcase
    if object && object.errors.present?  
      html << "<div class='errorExplanation #{object_name}Errors'>\n"  
      if message.blank?  
        if object.new_record?  
          html << "\t\t<h2>有以下#{object.errors.size}个问题发生在创建 #{I18n.t object_name.to_s} 的过程中！</h2>\n"  
        else  
          html << "\t\t<h2>有以下#{object.errors.size}个问题发生在更新 #{I18n.t object_name} 的过程中！</h2>\n"  
        end      
      else  
        html << "<h2>#{message}</h2>"  
      end    
      html << "\t\t<ul>\n"  
      object.errors.full_messages.each do |error|  
        html << "\t\t\t<li>#{error}</li>\n"  
      end  
      html << "\t\t</ul>\n"  
      html << "\t</div>\n"  
    end  
    html.html_safe  
  end 

  def get_month_name time
    month_index = time.month rescue 0
    return I18n.t("date")[:month_names][month_index.to_i ] 
  end


  def get_all_tags
    tags = Blog.get_all_tags
    items = tags.enum_for(:each).map do |t|
      content_tag :li do
        tag_name = t.tag.try(:name)
        link_to tag_name+"("+t.count_tag.to_s+")",blog_index_path(:tag => t.tag_id) 
      end
    end 
    content_tag :ul do
      items.join("").html_safe
    end
  end

  def get_blog_tags blog_id
    blog = Blog.find_by_id(blog_id)
    tags = blog.taggings
    items = tags.enum_for(:each).map do |t|
      link_to t.tag.try(:name),blog_index_path(:tag => t.tag_id)
    end
    content_tag :span, :class => "tag_span" do
      items.join(" ").html_safe
    end
  end

  def get_title
    default_title = "老三的blog"
    other_title = ""
    if params[:controller] == "blog"
      if params[:id] && @blog
        other_title = "-" + @blog.title
      elsif params[:tag]
        tag = Tag.find_by_id(params[:tag])
        other_title = "-" + tag.name if tag
      elsif params[:time]
        other_title = "-" + params[:time]
      end
    elsif params[:action] == "about"
      return "朱三" 
    end
    default_title + other_title
  end
end
