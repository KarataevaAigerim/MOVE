class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
  end

  def contact
    @user = current_user
  end

  def tips
    @user = current_user
  end

end
