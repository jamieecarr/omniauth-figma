<div align="center">
<img src="https://dashboard.snapcraft.io/site_media/appmedia/2019/03/icon_E5fiGLe.png" width="80">

# OmniAuth Figma
🚀 A Figma OAuth2 strategy for OmniAuth.

![Gem](https://img.shields.io/gem/v/omniauth-figma?style=flat-square) 
![GitHub](https://img.shields.io/github/license/jamieecarr/omniauth-figma?style=flat-square)
![Travis (.org)](https://img.shields.io/travis/jamieecarr/omniauth-figma?style=flat-square)
</div>

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


## Auth Hash
Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  provider: 'figma',
  uid: '590538702844424791',
  info: {
    email: 'joe@bloggs.com',
    name: 'Joe',
    image: 'https://s3-alpha.figma.com/static/user_j.png',
  },
  credentials: {
    access_token: '<TOKEN>', # OAuth 2.0 access_token, which you may wish to store
    expires_in: '<EXPIRATION (in seconds)>' # When the access token expires (it always will)
    refresh_token: 'refresh_token' #This can be reused as many times as necessary to retrieve a new access_token. 
  }
}
```



## Contributing

1.  Fork it
2.  Create your feature branch (`git checkout -b my-new-feature`)
3.  Commit your changes (`git commit -am 'Add some feature'`)
4.  Push to the branch (`git push origin my-new-feature`)
5.  Create new Pull Request