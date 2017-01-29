require_relative ("../db/SqlRunner")

class Ticket

  attr_reader 

  def initialize(options)
    @customer_id = options ['']
    @film_id = options['']
  end


  def save
    sql = "INSERT INTO tickets (customer_id, film_id) VALUES ('#{@customer_id}', #{@film_id}),  returning *;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
  end

  # def delete


  # end


  # def update


  # end



end