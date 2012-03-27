Before do
  @original_search_class = Searcher.search_class
  Searcher.search_class = TwitterMock
end

After do
  Searcher.search_class = @original_search_class
end
