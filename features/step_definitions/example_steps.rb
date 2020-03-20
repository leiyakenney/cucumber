Given(/^I am on the homepage$/) do
  find('h1', :text => "Welcome to MyRapName.com")
end

Then /^I should( not)? see a field "([^"]*)"$/ do |negate, name|
  expectation = negate ? :should_not : :should
  begin
    field = find_field(name)
  rescue Capybara::ElementNotFound
  end
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When(/^I select checkbox "(.*?)"$/) do |cb|
  check(cb)
end

When /I click on the "(.+)" button/ do |locator|
  page.click_button locator
end

Then /^I should see the text "([^"]*)"$/ do |name|
    page.first('tr', text: name)
end

Then /^I should have (\d+) table rows$/ do |number_of_rows|
  actual_number = page.all(:css, 'table > tbody > tr tr').size
  actual_number.should == number_of_rows
end
