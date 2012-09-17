module ApplicationHelper
  MENU = [ 
    {:name => "Services", :link => "services"},
    {:name => "About", :link => "about"},
    {:name => "Our Work", :link => "our_work"},
    {:name => "Contact", :link => "contact"}
    ]
    
  def get_active_menu_item
    item = MENU.find{|m| m[:link] == params[:id]}
    if item.nil?
      return ""
    else
      return item[:name]
    end
  end
      
  def home?
    params[:controller] == "home"
  end
  
  def get_menu
    MENU
  end
  
  def divider
    content_tag("div", :class => "divider") do
      tag("br") + image_tag("divider.png")
    end
  end
  
end
