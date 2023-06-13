class WeeksController < ApplicationController

    def index
        @weeks = Week.all
    end

    def show 
        @week = Week.find(params[:id])
        @day = Day.find_by(week_id: @week.id, day_number: 1)
        @workout_day = WorkoutDay.find_by(day_id: @day.id)
    end
end
