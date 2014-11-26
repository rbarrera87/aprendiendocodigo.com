class LevelsController < ApplicationController
  before_action :set_level, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource
  skip_authorize_resource only: [:index, :show]

  def index
    @levels = Level.all
  end

  def show
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.new(level_params)
    respond_to do |format|
      if @level.save
        format.html { redirect_to @level, notice: 'level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @level }
      else
        format.html { render action: 'new' }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @level.update(level_params)
        format.html { redirect_to @level, notice: 'level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @level.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @level.destroy
    respond_to do |format|
      format.html { redirect_to levels_url }
      format.json { head :no_content }
    end
  end

  private
  def set_level
    @level = Level.find params[:id]
  end

  def level_params
    params.require(:level).permit(:name, :course_id)
  end
end
