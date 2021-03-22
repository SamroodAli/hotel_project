class Room
  def initialize(capacity)
    @capacity =  capacity
    @occupants = Array.new()
  end
  
  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    @occupants.length >= @capacity
  end

  def available_space
    @capacity - @occupants.length
  end

end

