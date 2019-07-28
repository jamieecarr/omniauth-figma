require "oauth2"
require "omniauth"

module OmniAuth
  module Strategies
    class Figma < OmniAuth::Strategies::OAuth2

      option :name, "figma" 
      option :scope, 'file_read'

      option :client_options, {
        site:           'https://www.figma.com',
        authorize_url:  '/oauth',
        token_url:      '/api/oauth/token'
      }

      option :token_options, [:client_id, :client_secret]
      option :token_params, { parse: :json }

      uid { raw_info['id'].to_s }

      info do
        {
          :name    => raw_info['handle'],
          :email   => raw_info['email'],
          :image   => raw_info['img_url']
        }
      end

      credentials do
        {
          :access_token   => access_token.token,
          :expires_at     => access_token.expires_at,
          :expires        => access_token.expires?,
          :refresh_token  => access_token.refresh_token
        }
      end
 
      def raw_info
        @raw_info = access_token.get('https://api.figma.com/v1/me').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end

    end
  end
end