class UsersController < ApplicationController
  def create
	@user = User.create(user_params)
	render json :@user
  end

  def destroy
	@user = User.find(params[:id])
	@user.destroy()
  end

  def update
	@user = User.find(params[:id])
	@user.update(user_params)
	render json :@user
  end

  private

  def user_params
        params.require(:user).permit(:id, :name, :lastname, :email, :password, :address)
  end
end
