class Player
  attr_reader :first_name, :last_name, :monthly_cost, :contract_length, :nickname
  def initialize(name, monthly_cost, contract_length, nickname = nil)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @nickname = nickname
  end

  def first_name
    first_name = @name[0..@name.index(" ")-1]
  end
  
  def last_name
    last_name = @name[(@name.index(" ")+1)..-1]
  end

  def total_cost
    @monthly_cost * @contract_length
  end

  def nickname!(nickname)
    @nickname = (nickname)
  end
end
