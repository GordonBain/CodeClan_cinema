
require_relative ('./Customer')
require_relative ('./Film')
require_relative ('./Ticket')

require('pry-byebug')

customer1 = Customer.new( {'name' => 'John Smith', 'funds' => 25} )
customer2 = Customer.new( {'name' => 'Dave Jones', 'funds' => 10} )
customer3 = Customer.new( {'name' => 'Andy Black', 'funds' => 33} )
customer4 = Customer.new( {'name' => 'Rick Small', 'funds' => 18} )

film1 = Film.new({'title' => 'T2 Trainspotting', 'price' => 7} )
film2 = Film.new({'title' => 'La La Land', 'price' => 7} )
film3 = Film.new({'title' => 'The Godfather', 'price' => 3} )
film4 = Film.new({'title' => 'The Sound of Music', 'price' => 3} )
film5 = Film.new({'title' => 'Jackie', 'price' => 7} )



# ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
# ticket1.save


binding.pry


nil