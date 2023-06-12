class ProgramsController < ApplicationController
    # skip_before_action :authenticate_user!

    def index
        @programs = Program.all
        @user = current_user
    end

    def show
        @program = Program.find(params[:id])
        @user = current_user
        @week = Week.find_by(program_id: @program.id, week_number: 1)
        @day = Day.find_by(week_id: @week.id, day_number: 1)
        @workout_day = WorkoutDay.find_by(day_id: @day.id)
    end 
end
