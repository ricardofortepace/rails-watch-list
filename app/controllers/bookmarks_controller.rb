class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comments, :movie_id)
  end

end
