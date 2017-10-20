require 'calabash-android/calabash_steps'
require_relative '../../features/page_object/android/calc_app'
require 'byebug'

Given(/^The app is launched$/) do
  @screen = page(CalcApp)
end

Given(/^I'm on the main screen/) do
  @main_screen = @screen.main_screen
end

When /^I fill in ([^\"]*) with (\d+)$/ do |arg, value|
  @main_screen.fill_in_field_with(arg, value)
end

When /^I click ([^\"]*) button/ do |btn|
  @main_screen.click_button(btn)
end

Then /^I should see "([^\"]*)" text/ do |text|
  @main_screen.check_text(text)
end