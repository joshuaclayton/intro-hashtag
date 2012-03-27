class SearchesController < ApplicationController
  def show
    @tweets = Twitter.search(search_term)
    render json: @tweets.to_json
  end

  private

  def search_term
    "##{params[:hashtag]}"
  end
end
