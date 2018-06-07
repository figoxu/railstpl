class VusersController < ApplicationController
  layout "main"

  def default

  end

  def list
    @users = User.all

    respond_to do |format|
      format.json {render json: @users}
    end
  end

end