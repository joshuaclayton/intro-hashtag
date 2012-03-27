class Searcher
  class_attribute :search_class
  self.search_class = Twitter

  def initialize(search_term)
    @search_term = search_term
  end

  def search
    search_class.search(@search_term)
  end
end
