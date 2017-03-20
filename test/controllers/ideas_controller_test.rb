require 'test_helper'

class IdeasControllerTest < ActionDispatch::IntegrationTest

  test "should redirect field when not logged in" do
    get field_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Idea.count' do
      post field_path, params: { idea: { content: "Lorem ipsum",
                                         suit: 'H' } }
    end
    assert_redirected_to login_url
  end
end
