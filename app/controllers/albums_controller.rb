class AlbumsController < ApplicationController

  before_filter :authorize

  def index
    @albums = Album.all
  end

  def new
  end

end
