class SessionsController < ApplicationController

  def new
  end

  def create
    raise params[:name].inspect
    if params[:name] == ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
