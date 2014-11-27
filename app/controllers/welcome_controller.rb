class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: []
  def index
    render :under_construction
  end

  def under_construction
  end

  def index_new
  end

end
