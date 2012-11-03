module ApplicationHelper  
  def language_links
    links = []
    I18n.available_locales.each do |locale|
      locale_key = "translation.#{locale}"
      if locale == I18n.locale
        links << link_to(I18n.t(locale_key), "#", class: "btn disabled")
      else
        links << link_to(I18n.t(locale_key), url_for(locale: locale.to_s), class: "btn")
      end
    end
    links.join("\n").html_safe
  end

  def navigation_links
    links = []
    options = params[:controller] == "welcome" ? { class: "active" } : {}
    links << content_tag(:li, link_to(t("hello"), welcome_path), options).html_safe

    options = params[:controller] == "person" ? { class: "active" } : {}
    links << content_tag(:li, link_to(t("person.title"), people_path), options).html_safe

    options = params[:controller] =~ /devise/i ? { class: "active" } : {}
    links << content_tag(:li, link_to(t("devise.registrations.new.title"), new_user_registration_path), options).html_safe

    #links << content_tag(:li, link_to(t("admin.title"), admin_dashboard_path)).html_safe

    content_tag(:ul, links.join("\n").html_safe, class: "nav")
  end
  def datepicker_tag(model, attribute, options={},datepicker_options = {})
    field_id = "#{model}_#{attribute}"
    field_name = "#{model}[#{attribute}]"
    field = ::ActionView::Helpers::InstanceTag.new(model, attribute, self)
    options = {:id => field_id, :name => field_name}.merge(options)
    datepicker_options = options_for_javascript(datepicker_options)
    js = "$(document).ready(function() { $(\"##{field_id}\").datepicker(#{datepicker_options});});"
    field.tag(:input, options) + javascript_tag(js)
  end
end
