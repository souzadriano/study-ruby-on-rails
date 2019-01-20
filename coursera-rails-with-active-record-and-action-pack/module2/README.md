https://github.com/jhu-ep-coursera/fullstack-course2-module2-advanced-ar

#Executed commands
`
rails new advanced_ar
`

`
rails g model person first_name age:integer last_name 
`

`
rake db:migrate 
`

`
rake db:seed 
`

`
rails g migration add_login_pass_to_people login pass 
`

```
rails c

Person.where("age BETWEEN ? AND ?", 15, 30)
Person.where("first_name LIKE ? OR last_name LIKE ?", '%J%', '%J%').to_a
Person.where("age BETWEEN :min_age AND :max_age", min_age: 28, max_age: 30)
Person.where("first_name LIKE :pattern OR last_name LIKE :pattern", pattern: "%J%").to_a
  
```

```
rails g model personal_info height:float weight:float person:references

bill = Person.find_by first_name: "Bill"
bill.personal_info
pi1 = PersonalInfo.create height: 6.5, weight: 220, person_id: bill.id

```

```
rails g model job title company position_id person:references

Job.create company: "MS", title: "Developer", position_id: "#1234"
p1 = Person.first
p1.jobs
p1.jobs << Job.first
Job.first.person

Person.first.jobs.where(company: "MS").count
Person.last.jobs.where(company: "MS").count
Person.last.jobs.where(company: "MS").to_a

Person.first.my_jobs.to_a

Person.first.destroy

```

```
rails g model hobby name

rails g migration create_hobbies_people person:references hobby:references

josh = Person.find_by first_name: "Josh"
lebron = Person.find_by first_name: "LeBron"
programming = Hobby.create name: "Programming"
josh.hobbies << programming
programming.people

```

```
rails g model salary_range min_salary:float max_salary:float job:references

lebron = Person.find_by first_name: "LeBron"
lebron.jobs.count
lebron.jobs.pluck :id
Job.find(8).create_salary_range(min_salary: 10000.00, max_salary: 20000.00)
Job.find(9).create_salary_range(min_salary: 15000.00, max_salary: 35000.00)
lebron.approx_salaries

lebron = Person.find_by last_name = "James"
lebron.max_salary
```

```
Hobby.pluck :name
Hobby.unscoped.pluck :name

Person.ordered_by_age.pluck :age
Person.ordered_by_age.starts_with("Jo").pluck :age, :first_name
Person.ordered_by_age.limit(2).starts_with("Jo").pluck :age, :first_name
```

```
job = Job.new
job.errors
job.save
job.errors

sr = SalaryRange.create min_salary: 30000.00, max_salary: 10000.00
sr.errors
sr.errors.full_messages
sr.save!

```

```
Person.first.personal_info.weight
Person.all.each { |p| puts p.personal_info.weight}
Person.includes(:personal_info).all.each { |p| puts p.personal_info.weight}

```