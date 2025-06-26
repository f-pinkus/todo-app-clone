class UsersController < ApplicationController
  def index
    users = User.all

    render json: users
  end

  def create
    user = User.create(
      name: params[:name],
    )
    render :show
  end

  def show
    user = User.find_by(id: params[:id])
    render :show
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(
      name: params[:name] || user.name,
    )
    render :show
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User destroyed successfully" }
  end
end
