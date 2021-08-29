module Api
	module V1
		class RoutinesController < ApplicationController
			def create
				routine = Current.user.routines.build(routine_params)
				if routine.save
					render json: routine, status: :created
				else
					render json: ErrorSerializer.serialize(routine.errors), status: :unauthorized
				end
			end

			private

			def routine_params
				params.require(:routine).permit(:name)
			end
		end
	end
end
