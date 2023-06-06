class ProgramsController < ApplicationController
    # skip_before_action :authenticate_user!

    def index
        @programs = Program.all
        @user = current_user
    end

    def show
        @program = Program.find(params[:id])
    end 
end
