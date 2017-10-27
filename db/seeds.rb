
client = User.create({
	first_name: "Odd",
	last_name: "Prophet",
	password_digest: "pass123",
	email: "odd@prophet.com",
	date_of_birth: "1992-6-22",
	gender: 0,
	role: 0 
	
})

worker = User.create({ 
	first_name: "Arthur",
	last_name: "Philadelpho",
	password_digest: "pass123",
	email: "arthur@philadelpho.com",
	date_of_birth: "1992-6-22",
	gender: 0,
	role: 1 
})

address = Address.create({ 
	neighborhood:"Ipanema", 
	street:"Rua Barão da Torre", 
	number:219, 
	complement:"casa", 
	cep: 22411001, 
	city:"Rio de Janeiro", 
	state:"RJ", 
	country:"Brasil"
})

address2 = Address.create({ 
	neighborhood:"Ipanema", 
	street:"Rua Redentor", 
	number:19, 
	complement:"apt 201", 
	cep: 22421030, 
	city:"Rio de Janeiro", 
	state:"RJ", 
	country:"Brasil"
})


location = Location.create({ 
	user_id: 1,
	address_id: 1
})

location2 = Location.create({ 
	user_id: 2,
	address_id: 2
})

service = Service.create({
	name: "Manicure",
	description: "Trimming nails and removing cuticles of the hands.",
	cost: 25
})

service2 = Service.create({
	name: "Pedicure",
	description: "Trimming nails and removing cuticles of the hands.",
	cost: 25
})

appointment = Appointment.create({
	client_id: 1,
	worker_id: 2,
	service_id: 1,
	location_id: 1,
	start_at: DateTime.parse('25th Oct 2017 16:19:09'),
	canceled: false,
	end_at: DateTime.parse('25th Oct 2017 16:59:49'),
})


client_rating = ClientRatings.create({
	client_id: 1,
	worker_id: 2,
	rating: 5,
	comments: "Client was very polite."
})

worker_rating = WorkerRatings.create({
	client_id: 1,
	worker_id: 2,
	rating: 5,
	comments: "Worker was very kind."
})

puts "Seed finished."