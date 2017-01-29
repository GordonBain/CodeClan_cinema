require_relative ("../db/SqlRunner")

class Customer

  attr_reader :name, :funds

  def initialize(options)
    @id = options ['id']
    @name = options['name']
    @funds= options['funds']
  end

  def save
    sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds})  returning *;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
  end

 def self.delete_all() 
   sql = "DELETE FROM customers"
   SqlRunner.run(sql)
 end



  # def update


  # end

end






