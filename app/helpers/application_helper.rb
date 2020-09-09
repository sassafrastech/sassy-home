module ApplicationHelper
  MENU = [
    {:name => "Blog", :external_link => "https://blog.sassafras.coop/"},
    {:name => "Services", :link => "services"},
    {:name => "Our Work", :link => "our-work"},
    {:name => "About", :link => "about"},
    {:name => "Team", :link => "team"},
    {:name => "Jobs", :link => "jobs"},
    {:name => "Contact", :link => "contact"}
  ]

  # For pages not included in the main menu that need their headings displayed in the top header
  PAGES = [
    {:name => "Documents", :controller => "documents"}
  ]

  def get_active_menu_item
    item = MENU.find{|m| (m[:link] || "").gsub('-', '_') == params[:controller]}
    item.nil? ? "" : item[:name]
  end

  def get_active_page
    item = PAGES.find{|p| p[:controller].gsub('-', '_') == params[:controller]}
    item.nil? ? "" : item[:name]
  end

  def get_active_item
    get_active_menu_item.empty? ? get_active_page : get_active_menu_item
  end

  def get_menu
    MENU
  end

  def divider
    content_tag("div", :class => "divider"){}
  end

  def is_active?(link)
    params[:controller] == link.to_s ? "active" : nil
  end

  def make_title
    title = "Sassafras Tech Collective"
    active_item = get_active_item
    title += " - #{active_item}" unless active_item.blank?
    title
  end
end
