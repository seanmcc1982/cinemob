class AdminController < ApplicationController
  def login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin Login Successful!"
    redirect_to :controller => :films
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "Admin Logout Successful!"
    redirect_to :controller => :films
  end

  def screen
  end

  def price
  end

  def film
  end

  def showing
  end

  def user
  end
end
