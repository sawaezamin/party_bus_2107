class Bus
  attr_reader :name, :capacity, :passengers
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end
  # everything above this is iteration 1

  def add_passenger(passenger)
    @passengers << passenger
  end

  def yell_at_passengers
    new_passengers = []
    @passengers.each do |name|
      new_passengers << name.upcase
    end
    new_passengers
  end
  # the two methods above is iteration 2

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    return false if @passengers.length <= @capacity
    true
  end
  #the two methods above is iteration 3

  def kick_out
    @passengers.shift
  end

  #kick out method is for iteration 4
end
