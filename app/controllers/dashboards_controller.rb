class DashboardsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_user_autorization
  def index
    # authorize user
  end

  private 

  def set_user_autorization
  
  end
end
