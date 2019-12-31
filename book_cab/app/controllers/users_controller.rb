class UsersController < ApplicationController
  def new 
    @user = User.new
  end

  def index
    @all=User.all
  end

  def create
  @user = User.new(user_parameters)
     if @user.save!
          redirect_to users_path
      else
        render :new
      end
  end

  def user_parameters
    params.require(:user).permit(:firts_name, :last_name, :email_id, :contact_no)
  end
end
