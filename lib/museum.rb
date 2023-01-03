class Museum
  attr_reader :name, 
              :exhibits,
              :patrons,
              :patrons_by_interests

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
    @patrons_by_interests = {}
  end

  def add_exhibit(topic)
    exhibits << topic
  end

  def recommend_exhibits(patron)
    @exhibits.select do |exhibit|
      patron.interests.include?(exhibit.name) 
    end
  end

  def admit(patron)
    patrons << patron
  end

  def patrons_by_exhibit_interest
    @exhibits.each do |exhibit|
      
      if patrons_by_interests[exhibit.name].nil? 
        patrons_by_interests[exhibit.name] = []
      end

      @patrons.each do |patron|
        patron.interests.include?(exhibit.name)
        patrons_by_interests[exhibit.name] << patron
      end

      patrons_by_interests
      # require 'pry'; binding.pry
     
    end
  end
end