class WatchedsController < ApplicationController

  def index
    @watcheds = Watched.all
  end

  def show
    @watched = Watched.find(params[:id])
  end

  def new
    @watched = Watched.new
  end

  def edit
    @watched = Watched.find(params[:id])
  end

  def create
    @watched = Watched.new(params[:watched])

    if @watched.save
      flash[:notice] = 'Watched was successfully created.'
      redirect_to(@watched)
    else
      render :action => "new"
    end
  end

  def update
    @watched = Watched.find(params[:id])

    if @watched.update_attributes(params[:watched])
      flash[:notice] = 'Watched was successfully updated.'
      redirect_to(@watched)
    else
      render :action => "edit"
    end
  end

  def destroy
    @watched = Watched.find(params[:id])
    @watched.destroy
  end
end
