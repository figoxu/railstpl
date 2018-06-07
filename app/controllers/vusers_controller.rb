class VusersController < ApplicationController
  layout "main"

  def default

  end

  def list
    totalPg = (User.all.length + 9) / 10
    @users = User.order(:id).page(params[:pgno]).per(10)

    respond_to do |format|
      format.json {render json: {
          :data => @users,
          :totalPg => totalPg,
      }}
    end
  end

end