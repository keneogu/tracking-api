module Api
	module V1
		class UsersController < ApplicationController
			def create
				user = User.new(user_params)
				if user.save
					render json: user, serializer: SessionSerializer, status: :created
				else
					render json: ErrorSerializer.serialize(user.errors), status: :unprocessable_entity
				end
			end

			private

			def user_params
				params.require(:user).permit(:username, :password)
			end
		end
	end
end