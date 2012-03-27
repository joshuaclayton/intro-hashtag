When /^I search for the hash tag "([^"]*)"$/ do |hashtag|
  visit root_path
  fill_in "hashtag", with: hashtag
  click_button "Submit"
end

Then /^I should see tweets containing "([^"]*)"$/ do |tweet_text|
  wait_until { all("ul.tweets li").count == 15 }

  search_term = /#{tweet_text}/i

  within "ul.tweets" do
    page.should have_css("li", text: search_term, count: 15)
  end
end
