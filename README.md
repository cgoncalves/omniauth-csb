# OmniAuth CSB

This gem contains the CSB strategy for OmniAuth. CSB uses OAuth 1.0a.

## Before You Begin

You should have already installed OmniAuth into your app; if not, read the [OmniAuth README](https://github.com/intridea/omniauth) to get started.

Now sign in into the [CSB developer area](http://csb.atnog.av.it.pt) and create an application. Take note of your Consumer Key and Consumer Secret (not the Access Token and Secret) because that is what your web application will use to authenticate against the CSB API. Make sure to set a callback URL or else you may get authentication errors. (It doesn't matter what it is, just that it is set.)

## Using This Strategy

First start by adding this gem to your Gemfile:

    gem 'omniauth-csb'

If you need to use the latest HEAD version, you can do so with:

    gem 'omniauth-csb', :github => 'cgoncalves/omniauth-csb'

Next, tell OmniAuth about this provider. For a Rails app, your `config/initializers/omniauth.rb` file should look like this:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :csb, "CONSUMER_KEY", "CONSUMER_SECRET"
    end

Replace CONSUMER_KEY and CONSUMER_SECRET with the appropriate values you obtained from CSB earlier.

## Supported Rubies

OmniAuth CSB is tested under 1.8.7, 1.9.2, 1.9.3 and Ruby Enterprise Edition.

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don’t break it in a future version unintentionally.
- Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## License

Copyright (c) 2013 by Carlos Gonçalves

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
