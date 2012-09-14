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
    controller.controller_name == 'static' && params[:id] == 'home'
  end
  
  def get_menu
    MENU
  end
  
  def divider
    image_tag("divider.png", :class => "divider")
  end
  
end
