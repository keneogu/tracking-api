module Api
	module V1
		class SessionsController < ApplicationController
			skip_before_action :authenticate, only: :create

			def create
				auth = Authentication.new(auth_params)
				if auth.authenticated?
					render json: auth.user, serializer: SessionSerializer
				else
					render json: ErrorSerializer.serialize(invalid: ['username or password']), status: :unauthorized
				end
			end

			def show
				render json: Current.user, serializer: SessionSerializer
			end

			private

			def auth_params
				params.require(:session).permit(:username, :password)
			end
		end
	end
end
