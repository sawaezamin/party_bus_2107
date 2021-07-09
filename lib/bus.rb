class Bus
  attr_reader :name, :capacity, :passengers
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end


  def add_passenger(passenger)
    @passengers << passenger
  end


  def yell_at_passengers
    list_names_caps = []
    @passengers.each do |person|
      list_names_caps << person.upcase
    end
    list_names_caps
  end


  def number_of_passengers
    @passengers.count
  end


  def over_capacity?
    number_of_passengers > capacity
  end


  def kick_out
    @passengers.shift
  end
end
