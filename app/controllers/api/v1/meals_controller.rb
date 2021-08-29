module Api
	module V1
		class MealsController < ApplicationController
			def create
				routine = Routine.find(params[:routine_id])
				meal = routine.meals.build(meal_params)
				meal.user = Current.user

				if meal.save
					render json: meal, status: :created
				else
					render json: ErrorSerializer.serialize(routine.errors), status: :unprocessable_entity
				end
			end

			private

			def meal_params
				params.require(:meal).permit(:name, :protein, :carbohydrate, :fat, :calorie )
			end
		end
	end
end
