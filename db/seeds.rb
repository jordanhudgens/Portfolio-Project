# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|   
  Blog.create!(       
    title: "My Blog Post #{blog}",       
    body: "Lorem ipsum dolor sit amet, gubergren conceptam an quo. Ius hinc commune
          electram te, nullam graece apeirian eu has. Pro quas illum admodum ut. Quod
          impetus tamquam id mel. Mei id noster oblique nusquam, pro eius autem commodo
          ut."     
  ) 
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
 )
end

puts "5 skills created"


9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio #{portfolio_item}",
    subtitle: "My Portfolio #{portfolio_item}",      
    body: "Lorem ipsum dolor sit amet, gubergren conceptam an quo. Ius hinc commune
          electram te, nullam graece apeirian eu has. Pro quas illum admodum ut. Quod
          impetus tamquam id mel. Mei id noster oblique nusquam, pro eius autem commodo
          ut.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolios created"