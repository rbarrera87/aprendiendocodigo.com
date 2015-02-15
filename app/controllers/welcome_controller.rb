class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: []
  def index
  end

  def under_construction
  end

end
