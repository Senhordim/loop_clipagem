class Ad::DashboardController < ApplicationController
  before_action :authenticate_admin!

  layout "ad"

  def index
  end

end
