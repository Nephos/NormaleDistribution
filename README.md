# Normale


## Installation

```sh
gem install normale_distribution
```

or in the ``Gemfile``

```ruby
gem 'normale_distribution'
```


## Usage in Ruby

```ruby
require 'normale_distribution'

NormaleDistribution::between      standard_deviation: 15, esperance: 100, a: 85, b: 115 # => 0.6826894921370859
NormaleDistribution::less_than    standard_deviation: 15, esperance: 100, a: 85 # => 0.15865525393145707
NormaleDistribution::greater_than standard_deviation: 15, esperance: 100, a: 115 # => 0.15865525393145707
```


## Unitary tests

```sh
rake test
```


## Contributes !

Find a bug ? Want a new feature ?
Create a clear pull request and we'll see :)

- Nephos (poulet_a)
