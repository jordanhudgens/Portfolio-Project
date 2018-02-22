module ApplicationHelper

  def login_helper(style)
    if current_user.is_a?(GuestUser) 
      (link_to 'Register', new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to 'Log in', new_user_session_path, class: style)
    else 
      link_to 'Log Out', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
     if session[:source] 
      content_tag(:p, "Thanks for visiting me from #{session[:source]}.", class: "source-greeting")
     end 
  end

  def copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
  end
end
