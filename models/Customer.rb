require_relative ("../db/SqlRunner")

class Customer

  attr_reader :id, :name, :funds

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

# to delete all customers
 def self.delete_all() 
   sql = "DELETE FROM customers"
   SqlRunner.run(sql)
 end


# to delete specific customer
 def delete()
   sql = "DELETE FROM customers WHERE id =#{@id};"
   result = SqlRunner.run(sql)
 end

# def update()
#   sql = "UPDATE customers SET (name, funds) = (#{@name}', #{@funds}) WHERE id = #{@id};"
#   result = SqlRunner.run(sql)
# end

end













