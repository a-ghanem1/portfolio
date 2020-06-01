module BlogsHelper
	def copyright
		"&copy; #{Time.now.year} | <b>Abdelrahman Ghanem</b> All Rights reserved".html_safe
	end
end
