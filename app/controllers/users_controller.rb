class UsersController < ApplicationController
 
before_action :authenticate_user!, except: [:show]
before_action :authorize_user, only: [:show]

# ...

def show
  @user = User.find_by(id: params[:id])

  if @user.nil?
    flash[:alert] = "User not found."
    redirect_to root_path
  end
end

# ...

private

def authorize_user
  unless current_user == User.find(params[:id])
    flash[:alert] = "You are not authorized to access this page."
    redirect_to root_path
  end
end
end