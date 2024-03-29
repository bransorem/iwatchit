class SessionsController < ApplicationController
  
  def new
  end

  def create
    @current_user = User.find_by_login_and_password(params[:login], params[:password])
    if @current_user
      session[:user_id] = @current_user.id
      if session[:return_to]
        redirect_to session[:return_to]
        session[:return_to] = nil
      else
        redirect_to @current_user
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = @current_user = nil
    redirect_to new_session_path
  end

end
