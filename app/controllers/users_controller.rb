class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def profile
    @user = current_user
    unless current_user.age && current_user.weight && current_user.gender && current_user.height && current_user.goal && current_user.experience
      redirect_to edit_user_registration_path
    end
  end

  # def update_profile
  #   @user = current_user
  #   if @user.create(user_params)
  #     redirect_to profile_path
  #   else
  #     render 'update_profile'
  #   end
  # end

  private

  def user_params
    params.require(@user).permit(:first_name, :last_name, :age, :weight, :height, :gender, :goal, :experience, :age)
  end
end

