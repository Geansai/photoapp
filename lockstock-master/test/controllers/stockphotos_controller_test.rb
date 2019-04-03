require 'test_helper'

class StockphotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockphoto = stockphotos(:one)
  end

  test "should get index" do
    get stockphotos_url
    assert_response :success
  end

  test "should get new" do
    get new_stockphoto_url
    assert_response :success
  end

  test "should create stockphoto" do
    assert_difference('Stockphoto.count') do
      post stockphotos_url, params: { stockphoto: { category: @stockphoto.category, description: @stockphoto.description, image_url: @stockphoto.image_url, photographer: @stockphoto.photographer, price: @stockphoto.price, tags: @stockphoto.tags, title: @stockphoto.title } }
    end

    assert_redirected_to stockphoto_url(Stockphoto.last)
  end

  test "should show stockphoto" do
    get stockphoto_url(@stockphoto)
    assert_response :success
  end

  test "should get edit" do
    get edit_stockphoto_url(@stockphoto)
    assert_response :success
  end

  test "should update stockphoto" do
    patch stockphoto_url(@stockphoto), params: { stockphoto: { category: @stockphoto.category, description: @stockphoto.description, image_url: @stockphoto.image_url, photographer: @stockphoto.photographer, price: @stockphoto.price, tags: @stockphoto.tags, title: @stockphoto.title } }
    assert_redirected_to stockphoto_url(@stockphoto)
  end

  test "should destroy stockphoto" do
    assert_difference('Stockphoto.count', -1) do
      delete stockphoto_url(@stockphoto)
    end

    assert_redirected_to stockphotos_url
  end
end
