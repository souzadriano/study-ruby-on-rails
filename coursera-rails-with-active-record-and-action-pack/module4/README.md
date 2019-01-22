https://github.com/jhu-ep-coursera/fullstack-course2-module3-blogposts

#Executed commands
```
rails new i_reviewed
rails g model reviewer name password_digest
rails g model book name author reviewer:references
rails g model note title note:text book:references
rake db:seed

rails g scaffold_controller book name author
```

```
rails g controller notes

```

```
helper.content_tag :p, "Hello there"
helper.content_tag(:div, helper.content_tag(:p, "Cool"), class: "world") 
```

```
Reviewer.create! name: "Joe", password: "abc123"
Reviewer.find_by name: "Joe"
joe.authenticate("somepassword")
joe.authenticate("abc123")
```

```
rails g controller sessions new create destroy
```
