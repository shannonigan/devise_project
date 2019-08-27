require 'test_helper'

class SequencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sequences_index_url
    assert_response :success
  end

  test "should get new" do
    get sequences_new_url
    assert_response :success
  end

  test "should get edit" do
    get sequences_edit_url
    assert_response :success
  end

  test "should get show" do
    get sequences_show_url
    assert_response :success
  end

end
