class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(session[:user_id])
    else
      redirect_to '/signup'
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: "updated"
    else
      redirect_to @user, notice: "failed"
    end
  end

  def edit
    @user = current_user
  end

  def destroy
   user = User.find(current_user.id)
   user.destroy
   reset_session
   flash[:notice] = "User destroyed."
   redirect_to '/'
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
