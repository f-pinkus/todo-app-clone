class CategoriesController < ApplicationController
  def index
    categories = Category.all

    render json: categories
  end

  def create
    category = Category.new(
      name: params[:name]
    )

    if category.save
      render json: category
    else
      render json: { errors: category.error.full_messages }, status: :bad_request
    end
  end

  def show
    category = Category.find_by(id: params[:id])

    render json: category
  end

  def update
    category = Category.find_by(id: params[:id])

    category.name = params[:name] || category.name

    if category.save
      render json: category
    else
      render json: { errors: category.error.full_messages }, status: :bad_request
    end
  end

  def destroy
    category = Category.find_by(id: params[:id])
    category.delete

    render json: { message: "Category successfully deleted."}
  end
end
