# minicurso-rails
This is a repository of the course of Ruby On Rails given at my college.

My example project is a website that lists enterprises and people who work in then.
It's possible to create, edit, see and destroy each person or enterprises added in the sistem.


### How to install the project:

First, execute in terminal:
	
	bundle install

Migrate the database using:
	
	rake db:migrate


Access the Rails console by typing:
	
	rails c

In the Rails console, type the following instructions in order to generate people and enterprises to the system.
Obs: To do this, I used [Faker](https://devhints.io/ffaker).

´´´

	#generate 100 people
	100.times do
		Person.create(name: Faker::Name.name,email: Faker::Internet.free_email)

	end

	#generate 10 enterprises
	10.times do
		Enterprise.create(name: Faker::Company.name, cnpj: Faker::Company.duns_number)

	end


	#add random enterprises to people 
	for i in Person.all
		i.Enterprise_id = 1 + rand(10)
		i.save
	end
´´´




### Running:
	cd path_to_the_repository
	rails s


### Acessing the website:
	localhost:3000/


### Future Work:
- Fix impossibility to destroy an enterprise without crashing the List People page
- Add masks to cnpj and email fields
- Add bootstrap design
