class UsersController < ApplicationController

  before_filter :login_required, :except => [ :new ]
  
  def addshow
    @shows = Show.all
  end
  
  def removeshow
    @show = Show.find(params[:id])
  end
  
  def index
    @users = User.all
    if @current_user.administrator.nil?
      redirect_to @current_user
    end
  end

  def show
    @user = User.find(params[:id])
    @watcheds = @user.watcheds
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to(@user)
    else
      render :action => "new"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      redirect_to(@user)
    else
      render :action => "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
