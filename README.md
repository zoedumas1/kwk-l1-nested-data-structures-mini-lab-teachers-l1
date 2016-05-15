
##Nesting Habits
<img src="https://s3.amazonaws.com/after-school-assets/nesting.jpg"> 
Arrays inside of arrays! Hashes inside of hashes! Arrays inside of hashes! Hashes inside of arrays inside of hashes! Oh my!

### 1: Arrays in Arrays
```ruby
sandwich = [["rye", "sourdough", "baguette"],[["ham", "salami", "turkey"],["swiss", "munster", "cheddar"]],["mayo", "mustard", "tabasco"]]
```
The `sandwich` array above is a series of nested arrays. What do I get if I ask for:
+ `sandwich[0][1]` ?
+ `sandwich[1]` ?
+ `sandwich[1][0][0]` ?

What code should I write to return each of these?:
+ ["mayo", "mustard", "tabasco"]
+ "cheddar"
+ "sourdough"

Make me a salami sandwich with swiss cheese on rye bread with mustard and mayo. Thank you.

### 2: Hashes in Hashes
```
city_info = {:new_york => { :mayor => "Bill DeBlasio",
							:population => 8337000,
							:website => "http://www.nyc.gov"
							},
			 :los_angeles => { :mayor => "Eric Garcetti",
							:population => 3884307,
							:website => "http://www.lacity.org"
							},
			 :miami => { :mayor => "Tomás Regalado",
							:population => 419777,
							:website => "http://www.miamigov.com"
							},
			 :chicago => { :mayor => "Rahm Emanuel",
							:population => 2695598,
							:website => "http://www.cityofchicago.org/"
							}
		}
```
The `city_info` hash above is a series of nested hashes. What do I get returned if I ask for:
+ `city_info[:los_angeles]` ?
+ `city_info[:chicago][:mayor]` ?

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

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hs-nested-data-structures-mini-lab' title='Nesting Habits'>Nesting Habits</a> on Learn.co and start learning to code for free.</p>
