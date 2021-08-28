module Api
	module V1
		class SessionsController < ApplicationController
			def create
				auth = Authentication.new(auth_params)
				if auth.authenticated?
					render json: auth.user, serializer: SessionSerializer
				else
					render json: ErrorSerializer.serialize(invalid: ['username or password']), status: :unauthorized
				end
			end

			private
			
			def auth_params
				params.require(:session).permit(:username, :password)
			end
		end
	end
end
