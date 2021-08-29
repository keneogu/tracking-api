module Api
  module V1
    class SessionSerializer < ActiveModel::Serializer
      attributes :id, :username, :token

      def token
        Token.encode(auth_token: object.auth_token)
      end
    end
  end
end
