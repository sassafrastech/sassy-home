module ApplicationHelper
  MENU = [ 
    {:name => "Services", :link => "services"},
    {:name => "About", :link => "about"},
    {:name => "Our Work", :link => "our_work"},
    {:name => "Contact", :link => "contact"}
  ]
    
  def get_active_menu_item
    item = MENU.find{|m| m[:link] == params[:controller]}
    item.nil? ? "" : item[:name]
  end
      
  def get_menu
    MENU
  end
  
  def divider
    content_tag("div", :class => "divider") do

    end
  end

  def is_active?(link)
    params[:controller] == link.to_s ? "active" : nil
  end
end
