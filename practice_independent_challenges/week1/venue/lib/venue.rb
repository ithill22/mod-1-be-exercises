class Venue

  attr_reader :name, :capacity
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def patrons
    @patrons
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.map{|patron|patron.upcase} # shorthand for below
    # # @patrons.map do |patron|
    #   patron.upcase
  end

  def over_capacity?
    @patrons.count > @capacity
  end

  def kick_out
    if over_capacity?
      @patrons.pop(@patrons.count - @capacity)
    end
  end

end


# lambda { |x| x.upcase }