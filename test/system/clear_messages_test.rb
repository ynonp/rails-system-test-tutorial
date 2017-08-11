require 'application_system_test_case'

class ClearMessagesTest < ApplicationSystemTestCase
  test "Delete all messages" do
    visit thewall_path
    assert_selector('ul li', count: 1)
    find('a', :text => "Delete All").click

    assert_selector('ul li', count: 0)
  end
end
