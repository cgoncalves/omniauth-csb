require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Csb < OmniAuth::Strategies::OAuth
      option :name, 'csb'
      option :client_options, {:authorize_path => '/csb/oauth/authorize',
                               :access_token_path => '/csb/oauth/access_token',
                               :request_token_path => '/csb/oauth/request_token',
                               :site => 'http://localhost:8080',
                               :proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil}

      uid { raw_info['name'] }

      info do
        {
          :id => raw_info['id'],
          :name => raw_info['name'],
          :email => raw_info['email'],
          :roles => raw_info['roles'],
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/csb/rest/users.json').body)
      end
    end
  end
end
