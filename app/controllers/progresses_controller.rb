class ProgressesController < ApplicationController
    before_action :set_user
  
    def index
      @progresses = @user.progresses.order(date: :desc)
      @progress = @user.progresses.build
      @progresses = current_user.progresses
    end
  
    def new
      @progress = @user.progresses.build
    end
  
    def create
      @progress = @user.progresses.build(progress_params)
      @progress.date = Date.today
      if @progress.save
        # redirect to the progress index
        redirect_to user_progresses_path(@user)
      else
        render :new
      end
    end
  
    def destroy
      @user = current_user
      @progress = @user.progresses.find(params[:id])
      @progress.destroy
      # redirect to the progress index
      redirect_to user_progresses_path(@user)
    end
  
    private
  
    def set_user
      @user = User.find(params[:user_id])
    end
  
    def progress_params
      params.require(:progress).permit(:date, photos:[])
    end
  end

