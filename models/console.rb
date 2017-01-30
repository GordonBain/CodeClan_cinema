
require_relative ('./Customer')
require_relative ('./Film')
require_relative ('./Ticket')

require('pry-byebug')

customer1 = Customer.new( {'name' => 'John Smith', 'funds' => 25} )
customer2 = Customer.new( {'name' => 'Dave Jones', 'funds' => 10} )
customer3 = Customer.new( {'name' => 'Andy Black', 'funds' => 33} )
customer4 = Customer.new( {'name' => 'Rick Small', 'funds' => 18} )


customer1.save
customer2.save
customer3.save
customer4.save
# customer1.name = 'Mike Miller'
# customer1.update('Mike Miller', 22)


film1 = Film.new({'title' => 'T2 Trainspotting', 'price' => 7} )
film2 = Film.new({'title' => 'La La Land', 'price' => 7} )
film3 = Film.new({'title' => 'The Godfather', 'price' => 3} )
film4 = Film.new({'title' => 'The Sound of Music', 'price' => 3} )
film5 = Film.new({'title' => 'Jackie', 'price' => 7} )

film1.save
film2.save
film3.save
film4.save
film5.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film2.id})
ticket4 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film2.id})

ticket1.save
ticket2.save
ticket3.save
ticket4.save

binding.pry


nil

