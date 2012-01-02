class EpisodesController < ApplicationController

  before_filter :login_required
  
  def add
    @comment = Comment.new(params[:comment])
    @current_user.comments<<@comment
    redirect_to @current_user
  end
  
  def watched
    @watched = Watched.new
    @episode = Episode.find(params[:id])
    @watched.save
    @episode.watcheds<<@watched
    @current_user.watcheds<<@watched
    redirect_to @current_user
  end
  
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @comment = Comment.new
  end

  def new
    @episode = Episode.new
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def create
    @episode = Episode.new(params[:episode])

    if @episode.save
      flash[:notice] = 'Episode was successfully created.'
      redirect_to(@episode)
    else
      render :action => "new"
    end
  end

  def update
    @episode = Episode.find(params[:id])

    if @episode.update_attributes(params[:episode])
      flash[:notice] = 'Episode was successfully updated.'
      redirect_to(@episode)
    else
      render :action => "edit"
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
  end
end
