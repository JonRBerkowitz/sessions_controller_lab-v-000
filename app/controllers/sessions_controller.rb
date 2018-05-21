class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name]
      session[:name] = params[:name]
    end
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
