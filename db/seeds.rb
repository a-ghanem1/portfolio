10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, 
		consectetur adipiscing elit, 
		sed do eiusmod tempor incididunt 
		ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, 
		quis nostrud exercitation ullamco 
		laboris nisi ut aliquip ex ea commodo 
		consequat. Duis aute irure dolor 
		in reprehenderit in voluptate velit 
		esse cillum dolore eu fugiat nulla pariatur.
		Lorem ipsum dolor sit amet, 
		consectetur adipiscing elit, 
		sed do eiusmod tempor incididunt 
		ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, 
		quis nostrud exercitation ullamco 
		laboris nisi ut aliquip ex ea commodo 
		consequat. Duis aute irure dolor 
		in reprehenderit in voluptate velit 
		esse cillum dolore eu fugiat nulla pariatur."
	)
end

puts "10 blog posts created."

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created."

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "My great sevice",
		body: "Lorem ipsum dolor sit amet, 
		consectetur adipiscing elit, 
		sed do eiusmod tempor incididunt 
		ut labore et dolore magna aliqua. 
		Ut enim ad minim veniam, 
		quis nostrud exercitation ullamco 
		laboris nisi ut aliquip ex ea commodo 
		consequat. Duis aute irure dolor 
		in reprehenderit in voluptate velit 
		esse cillum dolore eu fugiat nulla pariatur.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

puts "9 portfolio items created."