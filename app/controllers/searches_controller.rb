class SearchesController < ApplicationController
  def show
    @tweets = Searcher.new(search_term).search
    render json: @tweets.to_json
  end

  private

  def search_term
    "##{params[:hashtag]}"
  end
end
