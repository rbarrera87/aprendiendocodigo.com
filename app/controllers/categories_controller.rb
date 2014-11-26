class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
  end
  def edit
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end
  def category_params
      params.require(:category).permit(:name, :description)
    end
end
