require "spec_helper"

describe TwitterMock do
  it "allows for stubbing a search response" do
    TwitterMock.stub_search_response("term", [{"text" => "my great tweet!"}])
    results = TwitterMock.search("term")

    results.first.text.should == "my great tweet!"
  end

  it "allows for stubbing a search response" do
    TwitterMock.stub_search_response("term", [{"text" => "my great tweet!"}])
    TwitterMock.stub_search_response("awesome", [{"text" => "heck yeah"}])

    TwitterMock.search("term").first.text.should == "my great tweet!"
    TwitterMock.search("awesome").first.text.should == "heck yeah"
  end
end
