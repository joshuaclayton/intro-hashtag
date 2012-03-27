class TwitterMock
  def self.stub_search_response(search_term, results)
    @results ||= {}
    @results[search_term] = results.map do |result|
      Twitter::Status.new(result)
    end
  end

  def self.search(search_term)
    @results[search_term]
  end
end
