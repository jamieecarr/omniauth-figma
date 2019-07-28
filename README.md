# OmniAuth Figma OAuth2 Strategy

A Figma OAuth2 strategy for OmniAuth.


## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-figma'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-figma


## Usage

Register your application with Figma to receive your Client ID and Secret key: https://www.figma.com/developers/apps

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :figma, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
end
```

You can now access the OmniAuth Figma OAuth2 URL: `/auth/figma`.


## Contributing

1.  Fork it
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -am 'Add some feature'`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create new Pull Request