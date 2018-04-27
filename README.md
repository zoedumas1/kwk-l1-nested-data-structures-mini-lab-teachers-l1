## Nesting Habits
<img src="https://s3.amazonaws.com/after-school-assets/nesting.jpg"> 
Arrays inside of arrays! Hashes inside of hashes! Arrays inside of hashes! Hashes inside of arrays inside of hashes! Oh my!

### 1: Arrays in Arrays
```ruby
ingredients = [
  ["rye", "sourdough", "baguette"],
  ["ham", "salami", "turkey"],
  ["swiss", "munster", "cheddar"],
  ["mayo", "mustard", "tabasco"]
]
```
The `ingredients` array above is a series of nested arrays. What do I get if I ask for:
+ `ingredients[0][1]` 
+ `ingredients[1]` 
+ `ingredients[1][0][0]` 

What code should I write to return each of these?:
+ `["mayo", "mustard", "tabasco"]`
+ `"cheddar"`
+ `"sourdough"`

**DELIVERABLE**: in `index.rb` implement the `sandwich_request` method, which takes in the `ingredients` array and an `order` array which is populated with ingredient strings. If the ingredients in the `order` are found within the `ingredients` array, the method returns `true`, otherwise it returns `false`, i.e.:

```ruby
sandwich_request(ingredients, ["rye", "tofu", "cheddar"])
# => false (tofu could not be found!)
```

**Note:** the method should be able to handle an `ingredients` array with more, and fewer, ingredients in varying orders. To pass the test, you won't be able to hard code the method to work only with the example array above!

### 2: Hashes in Hashes
```ruby
cities = {
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
```

The `cities` hash above is a series of nested hashes. What do I get returned if I ask for:
+ `cities[:los_angeles]`
+ `cities[:chicago][:mayor]`

What code should I write to return each of these?:
+ The population of New York
+ The website for Miami city government
+ The mayor of Los Angeles
+ A hash with all information on Chicago

Bonus: Use an `each` loop with another `each` loop to `puts` a string for each key value pair belonging to a city. For example, for Miami you should see:

```
"The mayor of miami is Tomás Regalado"
"The population of miami is 419777"
"The website of miami is http://www.miamigov.com"
```

**DELIVERABLE**: implement the `city_populations` method, which takes in the a `cities` hash and returns single number that is the sum of all the cities populations. 

**Note:** the method should be able to handle a `cities` hash with more, and fewer, cities within. To pass the test, you won't be able to hard code the method to work only with the example hash above!


<p data-visibility='hidden'>KWK-L1 Nesting Habits</p>
