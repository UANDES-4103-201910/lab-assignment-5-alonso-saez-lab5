class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
	@user = User.create(user_params)
	render json: @user
  end

  def destroy
	@user = User.find(params[:id])
	@user.destroy()
  end

  def update
	@user = User.find(params[:id])
	@user.update(user_params)
	render json: @user
  end

  def show
	@user = User.find(params[:id])
	render json: @user
  end

  def index
  @user = User.all
  render json: @user
  end

  def user_with_most_tickets
	a = User.joins(:orders => :tickets).group(:user_id).count(:id)
	b = a.sort_by{|k,v| v}
	c = b[0]
	@user = Hash[*c]
	render json: @user
  end



  private
  def user_params
        params.require(:user).permit(:id, :name, :lastname, :email, :password, :address)
  end
end
