module Api
	module V1
		class RoutinesController < ApplicationController
			def index
				routines = Current.user.routines
				render json: routines
			end
			
			def create
				routine = Current.user.routines.build(routine_params)
				if routine.save
					render json: routine, status: :created
				else
					render json: ErrorSerializer.serialize(routine.errors), status: :unauthorized
				end
			end

			def destroy
				routine = Routine.find(params[:id])
				routine.destroy
				render json: routine
			end

			private

			def routine_params
				params.require(:routine).permit(:name)
			end
		end
	end
end
