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


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def create
    @user = User.new(params[:vuser].permit(:name, :password, :email, :city, :programLanguage, :team, :phone, :gender, :avatar))
    @user.save
    respond_to do |format|
      format.json { head :no_content }
    end
  end
end