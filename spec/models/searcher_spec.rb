require "spec_helper"

describe Searcher do
  it "returns search results" do
    Searcher.search_class.stubs(:search)
    Searcher.new("my awesome search terms").search
    Searcher.search_class.should have_received(:search).with("my awesome search terms")
  end
end
