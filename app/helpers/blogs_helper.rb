module BlogsHelper
	def copyright
		"&copy; #{Time.now.year} | <b>Abdelrahman Ghanem</b> All Rights reserved".html_safe
	end

	def gravatar_helper user
    	image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  	end
end
