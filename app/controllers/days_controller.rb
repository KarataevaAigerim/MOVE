class DaysController < ApplicationController
    def show 
        @day = Day.find(params[:id])
        @workouts = @day.workouts
        @workout_day = WorkoutDay.find_by(day_id: @day.id)
        @workout = @workout_day.workout if @workout_day.present?
       
    end
end
