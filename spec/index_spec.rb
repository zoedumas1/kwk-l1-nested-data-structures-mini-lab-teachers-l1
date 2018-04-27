require_relative './spec_helper.rb'
require_relative '../index.rb'

ingr_def = [
  ["rye", "sourdough", "baguette"],
  ["ham", "salami", "turkey"],
  ["swiss", "munster", "cheddar"],
  ["mayo", "mustard", "tabasco"]
]

ingr_small = [
  ["mayo", "mustard", "tabasco"],
  ["swiss", "munster", "cheddar"],
  ["rye", "sourdough", "baguette"],
]

ingr_large = [
  ["rye", "sourdough", "baguette"],
  ["ham", "salami", "turkey"],
  ["swiss", "munster", "cheddar"],
  ["mayo", "mustard", "tabasco"],
  ["lettuce", "tomatoes", "pickles"]
]

describe "sandwich_request" do

  it 'returns true if all order ingredients are found' do
    result = sandwich_request(ingr_def, ["sourdough", "turkey", "swiss", "mustard"])
    expect(result).to eq(true), "make sure you check all arrays for each order ingredient!"
  end

  it "returns true if all order ingredients are found, even if requested out of order" do
    result = sandwich_request(ingr_def, ["turkey", "sourdough", "swiss", "mustard"])
    expect(result).to eq(true), "make sure you check all arrays for each order ingredient!"
  end
  
  it "returns true if all order ingredients are found, even if multiple order ingredients are in the same ingredients sub-array" do
    result = sandwich_request(ingr_def, ["turkey", "ham", "sourdough", "swiss", "mustard", "mayo"])
    expect(result).to eq(true), "make sure you check all arrays for each order ingredient!"
  end
  
  it 'returns true if all order ingredients are found with a smaller ingredients array' do
    result = sandwich_request(ingr_small, ["sourdough", "swiss", "mustard"])
    expect(result).to eq(true), "make sure you check all arrays for each order ingredient!"
  end
  
  it 'returns true if all ingredients are found with a larger ingredient array' do
    result = sandwich_request(ingr_small, ["turkey", "sourdough", "swiss", "mustard"])
    expect(diamond).to eq(big_diamond), "expected a diamond with 9 rows, tapering in each direction. Received:\n#{diamond}"
  end

  it 'returns false if any ingredients are not found' do
    result = sandwich_request(ingr_small, ["turkey", "sourdough", "swiss", "mustard"])
    expect(diamond).to eq(big_diamond), "expected a diamond with 9 rows, tapering in each direction. Received:\n#{diamond}"
  end
end

cities_def = {
  :new_york => { 
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => { 
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => { 
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => { 
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

cities_small = {
  :new_york => { 
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => { 
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => { 
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  }
}

cities_large = {
  :new_york => { 
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => { 
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => { 
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => { 
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  },
  :new_london => { 
    :mayor => "Gabriel Chandler",
    :population => 50439,
    :website => "http://www.ci.new-london.ct.us/"
  }
}



describe "city_populations" do
  
  it 'returns true if it correctly returns the sum of the populations from the cities present' do
    result = city_populations(cities_def)
    expect(result).to eq(15336682), "make sure you are iterating through all of the hash's values and collecting the 'population' key's value!"
  end
  
  it 'returns true if it correctly returns the sum of the populations from the cities present in a cities hash with fewer cities' do
    result = city_populations(cities_small)
    expect(result).to eq(12641084), "make sure you are iterating through all of the hash's values and collecting the 'population' key's value!"
  end
  
  it 'returns true if it correctly returns the sum of the populations from the cities present in a cities hash with more cities' do
    result = city_populations(cities_large)
    expect(result).to eq(15387121), "make sure you are iterating through all of the hash's values and collecting the 'population' key's value!"
  end

end
