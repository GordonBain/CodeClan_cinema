require_relative ("../db/SqlRunner")

class Ticket

  attr_accessor :id, :customer_id, :film_id 

  def initialize(options)
    @id = options['id']
    @customer_id = options ['customer_id']
    @film_id = options['film_id']
  end

  def save
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES (#{@customer_id}, #{@film_id}) returning id"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
  end

 # Delete function not required?  As soon as customer of film deleted then tickets automatically deleted?

  # def update


  # end

end

