class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: []
  def index
  end
end
