class UserController < ApplicationController
  def login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "User Login Successful!"
    redirect_to :controller => :showings
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "User Logout Successful!"
    redirect_to :controller => :showings
  end

  def register
  end

  def pwreset
  end

  def history
  end

  def sub
  end

  def unsub
  end
end
