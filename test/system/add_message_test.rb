require 'application_system_test_case'

class AddMessageTest < ApplicationSystemTestCase
  test "sending a message" do
    visit thewall_path
    fill_in 'text', with: 'hello world 1'
    find('input[type="submit"]').click

    assert_selector('ul li:last-child', text: 'hello world 1')
  end

  test "sending another message" do
    visit thewall_path
    fill_in 'text', with: 'hello world 2'
    find('input[type="submit"]').click

    assert_selector('ul li:last-child', text: 'hello world 2')
  end

end
