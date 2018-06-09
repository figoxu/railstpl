class LoginController < ApplicationController
  layout "login"

  def new

  end

  def login
    redirect_to vusers_default_path
  end

end
