module ApplicationHelper
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
end
