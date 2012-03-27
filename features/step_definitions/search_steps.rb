When /^I search for the hash tag "([^"]*)"$/ do |hashtag|
  visit root_path
  fill_in "hashtag", with: hashtag
  click_button "Submit"
end

Then /^I should see tweets containing "([^"]*)"$/ do |tweet_text|
  wait_until(15) { all("ul.tweets li").count == 15 }

  search_term = /#{tweet_text}/i

  within "ul.tweets" do
    page.should have_css("li", text: search_term, count: 15)
  end
end

Given /^Twitter responds to the search "([^"]*)" with the tweets:$/ do |search_term, table|
  TwitterMock.stub_search_response(search_term, table.hashes)
end

Then /^I should see the following tweets:$/ do |table|
  tweets_text = table.raw.flatten

  tweets_text.each do |tweet_text|
    page.should have_css("ul.tweets li", text: tweet_text)
  end
end
