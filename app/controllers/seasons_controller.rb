class SeasonsController < ApplicationController

  before_filter :login_required
  
  def addepisode
    @season = Season.find(params[:id])
    length = @season.episodes.size + 1
    @episode = @season.episodes.create(:season => @season)
    redirect_to @episode
  end
  
  def index
    @seasons = Season.all
  end

  def show
    @season = Season.find(params[:id])
  end

  def new
    @season = Season.new
  end

  def edit
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.new(params[:season])

    if @season.save
      flash[:notice] = 'Season was successfully created.'
      redirect_to(@season)
    else
      render :action => "new"
    end
  end

  def update
    @season = Season.find(params[:id])

    if @season.update_attributes(params[:season])
      flash[:notice] = 'Season was successfully updated.'
      redirect_to(@season)
    else
      render :action => "edit"
    end
  end

  def destroy
    @season = Season.find(params[:id])
    @season.destroy
    redirect_to seasons_path
  end
end
