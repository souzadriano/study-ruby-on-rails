https://github.com/jhu-ep-coursera/fullstack-course2-module1-fancy_cars

#Executed commands
`
rails new fancy_cars 
`

`
rails g scaffold car make color year:integer 
`

`
rake db:migrate 
`

`
rails g migration add_price_to_cars 'price:decimal{10,2}' 
`

`
rails g migration rename_make_to_company 
`


