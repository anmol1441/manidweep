class BackController < ApplicationController 
  before_action :authenticate_user!
  layout "back"

  def index
    @current_user = current_user
  end
end
