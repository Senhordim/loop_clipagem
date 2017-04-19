class AdController < ApplicationController

  before_action :authenticate_admin!

  layout "ad"

end
