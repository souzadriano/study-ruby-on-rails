# Ruby on Rails Web Services and Integration with MongoDB Module 1

https://github.com/jhu-ep-coursera/fullstack-course3-module1

https://github.com/jhu-ep-coursera/fullstack-course3-module1-zips

```
docker run --name mongo-rails -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=rails -e MONGO_INITDB_ROOT_PASSWORD=rails -d mongo

irb
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO
db = Mongo::Client.new('mongodb://username:password@localhost:27017')
db = db.use('test')
db.database.collections
db[:zips].find.first
db[:zips].insert_one(:_id => "100", :city => "city01", "loc" => [-72.622739, 42.070206], "pop" => 15338, "state" => "MA")
db[:zips].find(city: "city01").count
db[:zips].insert_many([{:_id => "200", :city => "city02", "loc" => [-72.622739, 42.070206], "pop" => 15338, "state" => "CA"}, {:_id => "300", :city => "city03", "loc" => [-72.622739, 42.070206], "pop" => 15338, "state" => "CA"}])
db[:zips].find(city: "BALTIMORE")
db[:zips].find(city: "BALTIMORE").first
db[:zips].find.distinct(:state)
pp db[:zips].find(city: "GERMANTOWN", state: "NY").first
db[:zips].find().each { |r| puts r }
db[:zips].find(state: "MD").projection(state:true).first
db[:zips].find(state: "MD").projection(state:true, _id:false).first
db[:zips].find.limit(3).each { |r| pp r} 
db[:zips].find.skip(3).limit(3).each { |r| pp r}
db[:zips].find.limit(3).sort({city: 1}).each { |r| pp r}
db[:zips].find.limit(3).sort({city: -1}).each { |r| pp r}
db[:zips].find(:city => {:$lt => 'D'}).limit(3).each { |r| pp r}
db[:zips].find(:city => {:$gt => 'D'}).limit(3).each { |r| pp r}
db[:zips].find(:city => {:$lt => 'G', :$gt => 'D'}).limit(3).each { |r| pp r}
db[:zips].find(:city => {:$regex => 'X'}).limit(5).each {|r| pp r}
db[:zips].find(:city => {:$regex => 'X$'}).limit(5).each {|r| pp r}
db[:zips].find(:city => {:$regex => '^X'}).limit(5).each {|r| pp r}
db[:zips].find(:city => {:$regex => '^[A-E]'}).limit(5).each {|r| pp r}
db[:zips].find(:city => {:$exists => true}).limit(5).each {|r| pp r}
db[:zips].find(:cityy => {:$exists => true}).limit(5).each {|r| pp r}
db[:zips].find(:pop => {:$not => {:$gt => 9500}}).limit(5).to_a.each {|r| pp r}
db[:zips].find(:state => {:$type => 2}).limit(5).to_a.each {|r| pp r}

```

```
db[:zips].insert_one(:_id => "100", :city => "citytemp", :loc => [ -76.05922700000001, 39.564894 ], :pop => 4678, :state => "MD" )

db[:zips].find(:city => 'citytemp').first

db[:zips].find(:_id => "100").replace_one(:_id => "100", :city => "city02", :loc => [ -78.22, 36.22 ], :pop => 2000, :state => "MD" ) 

db[:zips].find(:_id => "100").to_a

db[:zips].find(:_id => "100").update_one(:$set => {:city => "name2"}) 

db[:zips].find(:_id => "100").to_a
 
db[:zips].find(:state => 'MD').count
db[:zips].find(:state => 'MD').update_many(:$set => {:state => 'XX'}) 
db[:zips].find(:state => 'MD').count
db[:zips].find(:state => 'XX').count

db[:zips].find(:city => 'name2').count
db[:zips].find(:city => 'name2').delete_one()
db[:zips].find(:city => 'name2').count

db[:zips].find(:state => 'MD' ).delete_many()

db[:zips].find(:city => "ODENVILLE1").count
db[:zips].find(:city => "ODENVILLE2").count
db[:zips].find(:city => "ODENVILLE1").update_one({:$set => {:city => "ODENVILLE2"}}, :upsert => true)
db[:zips].find(:city => "ODENVILLE1").count
db[:zips].find(:city => "ODENVILLE2").count
```

```
rails new zips
rails g mongoid:config

mongo_client = Mongoid::Clients.default
mongo_client.database.name
collection = mongo_client[:zips]
collection.count

rails g scaffold_controller Zip id city state population:integer

```
