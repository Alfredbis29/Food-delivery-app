class DashboardsController < ApplicationController
  before_action :authenticate_user!

  # before_action :set_user_autorization
  before_action :set_user_autorization
  def index
    # authorize user
  end

  private

  def set_user_autorization
if current_user.admin == true
  action = params[:action]
else
  redirect_to root_path, alert: "You are not authorized to perform this action."
 end
 end
end
