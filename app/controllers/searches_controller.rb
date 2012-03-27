class SearchesController < ApplicationController
  def show
    @tweets = Twitter.search(search_term)
  end

  private

  def search_term
    "##{params[:hashtag]}"
  end
end
