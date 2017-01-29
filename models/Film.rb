require_relative ("../db/SqlRunner")

class Film

  attr_reader :title, :film

  def initialize(options)
    @id = options ['id']
    @title = options['title']
    @price = options['price']
  end


  def save
    sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) returning *;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
  end

  def self.delete_all() 
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  


  # def update


  # end


end





