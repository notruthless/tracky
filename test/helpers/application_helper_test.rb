require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    title = "My Title"
    Rails.configuration.x.app_title = "My Title"
    assert_equal full_title,  title
    assert_equal full_title("Help"), "Help | #{title}"
  end
end