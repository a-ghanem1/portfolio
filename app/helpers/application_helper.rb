module ApplicationHelper
	def login_helper style = ''
		if current_user.is_a?(GuestUser)
	     	(link_to "Register", new_user_registration_path, class: style) +
	      	" ".html_safe +
	      	(link_to "Login", new_user_session_path, class: style)
	    else
	    	link_to 'Logout', destroy_user_session_path, method: :delete, class: style
	    end
	end

	def source_helper
		if session[:source]
			greeting_msg = "Thanks for visiting me from: #{session[:source]}"
	    	content_tag(:p, greeting_msg, class: "source-greeting")
	    end
	end

	def copyright
		"&copy; #{Time.now.year} | <b>Abdelrahman Ghanem</b> All Rights reserved".html_safe
	end

	def nav_items
	    [
	      {
	        url: root_path,
	        title: 'Home'
	      },
	      {
	        url: about_me_path,
	        title: 'About Me'
	      },
	      {
	        url: contact_path,
	        title: 'Contact'
	      },
	      {
	        url: blogs_path,
	        title: 'Blog'
	      },
	      {
	        url: portfolios_path,
	        title: 'Portfolio'
	      },
	    ]
	end

	def nav_helper style, tag_type
		nav_links = ''

	    nav_items.each do |item|
	      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
	    end

    	nav_links.html_safe
	end

	def active? path
    "active" if current_page? path
  	end

  	def alerts
	    alert = (flash[:alert] || flash[:error] || flash[:notice])

	    if alert
	      alert_generator alert
	    end
	end

	def alert_generator msg
	    js add_gritter(msg, title: "Abdelrahman Gh. Portfolio", sticky: false)
	end

	def main_image(item)
		if item.main_image.attached?
			image_tag item.main_image, class: "main_size", width: '100%'
		else
			image_tag '600x400.png'
		end
	end

	def thumb_image(item)
		if item.thumb_image.attached?
			image_tag item.thumb_image, size: "350x200"
		else
			image_tag '350x200.png'
		end
	end
end
