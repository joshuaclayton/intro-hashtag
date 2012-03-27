When /^I search for the hash tag "([^"]*)"$/ do |hashtag|
  visit root_path
  fill_in "hashtag", with: hashtag
  click_button "Submit"
end

Then /^I should see tweets containing "([^"]*)"$/ do |tweet_text|
  within "ul.tweets" do
    page.should have_css("li", text: tweet_text)
  end
end
