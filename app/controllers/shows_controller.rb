class ShowsController < ApplicationController
  
  before_filter :login_required
  
  def add
    @show = Show.find(params[:id])
    @current_user.shows<<@show
    @current_user.save
    redirect_to @current_user
  end
  
  def remove
    @show = Show.find(params[:id])
    @current_user.shows.delete(@show)
    redirect_to @current_user
  end
  
  def addseason
    @show = Show.find(params[:id])
    length = @show.seasons.size + 1
    @season = @show.seasons.create(:number => length, :show => @show)
    redirect_to @season
  end
  
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def edit
    @show = Show.find(params[:id])
  end

  def create
    @show = Show.new(params[:show])

    if @show.save
      flash[:notice] = 'Show was successfully created.'
      redirect_to(@show)
    else
      render :action => "new"
    end
  end

  def update
    @show = Show.find(params[:id])

    if @show.update_attributes(params[:show])
      flash[:notice] = 'Show was successfully updated.'
      redirect_to(@show)
    else
      render :action => "edit"
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
  end
end
