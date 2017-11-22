class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show

  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.update
      redirect :show
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def song_params
    params.require[:song].permit(*args) # if something breaks it is probably because of this... because i guessed and I'm not that good!
  end

end
