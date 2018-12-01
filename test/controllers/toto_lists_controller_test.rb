require 'test_helper'

class TotoListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toto_list = toto_lists(:one)
  end

  test "should get index" do
    get toto_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_toto_list_url
    assert_response :success
  end

  test "should create toto_list" do
    assert_difference('TotoList.count') do
      post toto_lists_url, params: { toto_list: { description: @toto_list.description, title: @toto_list.title } }
    end

    assert_redirected_to toto_list_url(TotoList.last)
  end

  test "should show toto_list" do
    get toto_list_url(@toto_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_toto_list_url(@toto_list)
    assert_response :success
  end

  test "should update toto_list" do
    patch toto_list_url(@toto_list), params: { toto_list: { description: @toto_list.description, title: @toto_list.title } }
    assert_redirected_to toto_list_url(@toto_list)
  end

  test "should destroy toto_list" do
    assert_difference('TotoList.count', -1) do
      delete toto_list_url(@toto_list)
    end

    assert_redirected_to toto_lists_url
  end
end
