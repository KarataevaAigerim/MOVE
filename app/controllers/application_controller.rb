class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :age, :gender, :weight, :height, :experience, :goal] )

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :age, :gender, :weight, :height, :experience, :goal])
  end
  
  # before_action :logged_in_user, only: [:edit, :update]

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = current_user
  #   @user = User.new(user_params)
  # end
  
  

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(user_params)
  #     flash[:success] = "Thank you"
  #     redirect_to @user
  #     # Handle a successful update.
  #   else
  #     render 'edit'
  #   end
  # end

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :age, :weight, :height, :goal, :experience, :age)
  # end
  
  
end
