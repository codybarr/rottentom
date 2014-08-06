# rottentom

rottentom is a simple ruby wrapper for the Rotten Tomatoes API based on HTTParty using Hashie::Mash

## Install

```ruby
gem install rottentom
```

## Usage

```ruby
require 'rottentom'

RT::API.api_key = "#{your_api_key}"
upcoming_dvds = RT::DVD.upcoming
# => results
```

## Copyright

Copyright (c) 2014 Cody Barr. See LICENSE.txt for
further details.
