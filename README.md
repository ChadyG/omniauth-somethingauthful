# OmniAuth Steam

This gem is an OmniAuth 1.0 strategy, supporting the OpenID SomethingAuthful API.

## Usage

Add to your `Gemfile`:

```ruby
gem 'omniauth-somethingauthful'
```

And then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :somethingauthful, "my-somethingauthful-web-api-key"
end
```

If you are using Rails, you may want to add it to the middleware stack:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :somethingauthful, "my-somethingauthful-web-api-key"
end
```

You will need to inform your steam web API key to be able to retrieve information about the authenticated user. You can request one by filling out [this form](http://steamcommunity.com/dev/apikey).

For additional information, please refer to the [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

## Authentication Hash

Here's an example of the *Authentication Hash* available in `request.env['omniauth.auth']`

```ruby
{
  :provider => "somethingauthful",
  :uid => "76561198010202071",
  :info => {
    :nickname => "ChadyG",
    :name => "Chad Godsey",
    :location => "US",
    :image => "http://media.steampowered.com/steamcommunity/public/images/avatars/3c/3c91a935dca0c1e243f3a67a198b0abea9cf6d48_medium.jpg",
    :urls => {
      :Profile => "http://steamcommunity.com/id/rnavarro1/"
    }
  },
  :credentials => {},
  :extra => {
    :raw_info => {
      :steamid => "76561198010202071",
      :communityvisibilitystate => 3,
      :profilestate => 1,
      :personaname => "Reu",
      :lastlogoff => 1325637158,
      :profileurl => "http://steamcommunity.com/id/rnavarro1/",
      :avatar => "http://media.steampowered.com/steamcommunity/public/images/avatars/3c/3c91a935dca0c1e243f3a67a198b0abea9cf6d48.jpg",
      :avatarmedium => "http://media.steampowered.com/steamcommunity/public/images/avatars/3c/3c91a935dca0c1e243f3a67a198b0abea9cf6d48_medium.jpg",
      :avatarfull => "http://media.steampowered.com/steamcommunity/public/images/avatars/3c/3c91a935dca0c1e243f3a67a198b0abea9cf6d48_full.jpg",
      :personastate => 1,
      :realname => "Rodrigo Navarro",
      :primaryclanid => "103582791432706194",
      :timecreated => 1243031082,
      :loccountrycode => "BR"
    }
  }
}
```
