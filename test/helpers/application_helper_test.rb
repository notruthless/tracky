require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    ENV['TITLE'] = 'MyTitle'
    assert_equal full_title,         ENV['TITLE']
    assert_equal full_title("Help"), "Help | #{ENV['TITLE']}"
  end
end