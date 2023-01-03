class Museum
  attr_reader :name, 
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
    # @recommended_exhibits = []
  end

  def add_exhibit(topic)
    exhibits << topic
  end

  def recommend_exhibits(patron)
    @exhibits.select do |exhibit|
      patron.interests.include?(exhibit.name) 
    end
  end
end