require 'faraday'
require 'pry'
require 'dotenv'

class TacoService

  def conn
    conn = Faraday.new(:url => 'http://taco-randomizer.herokuapp.com/')
    binding.pry
  end

  def get_response(url)
    conn.get(url)
  end

  def random_ingredients
    get_response('/random/')
  end

  def random_taco

  end

  def contributors

  end

  def contributions(contribution)

  end

  def ingredients_by_type(type)

  end

  def contributors_by_ingredient(type, ingredient)

  end
end
