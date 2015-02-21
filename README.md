# TranslatesToFrench

Basic French/English i18n helper for Rails application models

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translates_to_french'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translates_to_french

## Usage

app/models/article.rb:

    class Article < ActiveRecord::Base
    	translates_to_french :title
    end

db table articles: 

- title (varchar)
- title_fr (varchar)

## Contributing

1. Fork it ( https://github.com/gordonbisnor/translates_to_french/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
