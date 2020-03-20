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
