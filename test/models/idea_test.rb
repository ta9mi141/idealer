require 'test_helper'

class IdeaTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @idea = @user.ideas.build(content: "Lorem ipsum", suit: 'D')
  end

  test "should be valid" do
    assert @idea.valid?
  end

  test "user id should be present" do
    @idea.user_id = nil
    assert_not @idea.valid?
  end

  test "content should be present" do
    @idea.content = "  "
    assert_not @idea.valid?
  end
end
