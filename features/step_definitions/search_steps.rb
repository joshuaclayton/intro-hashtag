When /^I search for the hash tag "([^"]*)"$/ do |hashtag|
  visit "/#{hashtag}"
end

Then /^I should see tweets containing "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
