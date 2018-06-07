class LoginController < ApplicationController
  layout "login"

  def new

  end

  def login
    redirect_to users_path
  end

end
