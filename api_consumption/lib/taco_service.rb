require 'faraday'
require 'pry'
require 'dotenv'

class TacoService

  def conn
    conn = Faraday.new(:url => 'http://taco-randomizer.herokuapp.com/')
  end

  def get_response(url)
    conn.get(url)
  end

  def parse
    response = get_response('/random/')
    JSON.parse(response)
    binding.pry
    #evaluate from here what response is and if the parser is working,
    # from there, run rspec.
  end

  def random_ingredients
    parse
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
