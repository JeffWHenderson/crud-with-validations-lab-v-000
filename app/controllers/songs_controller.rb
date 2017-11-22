class SongsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def song_params(*args)
    params.require[:song].permit(*args) # if something breaks it is probably because of this... because i guessed and I'm not that good!
  end

end
