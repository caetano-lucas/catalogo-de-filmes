class Director
  attr_reader :name, :nationality, :birth_date, :favorite_gender
  
  def initialize(name:, nationality:, birth_date:, favorite_gender:)
    @name = name
    @nationality = nationality
    @birth_date = birth_date
    @favorite_gender = favorite_gender
  end
end
