require 'test_helper'

class PostersControllerTest < ActionController::TestCase
  setup do
    @poster = posters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posters)
  end

  test "should create poster" do
    assert_difference('Poster.count') do
      post :create, poster: { credits: @poster.credits, description: @poster.description, price: @poster.price, productUrl: @poster.productUrl, shippingDetails: @poster.shippingDetails, title: @poster.title, units_in_stock: @poster.units_in_stock }
    end

    assert_response 201
  end

  test "should show poster" do
    get :show, id: @poster
    assert_response :success
  end

  test "should update poster" do
    put :update, id: @poster, poster: { credits: @poster.credits, description: @poster.description, price: @poster.price, productUrl: @poster.productUrl, shippingDetails: @poster.shippingDetails, title: @poster.title, units_in_stock: @poster.units_in_stock }
    assert_response 204
  end

  test "should destroy poster" do
    assert_difference('Poster.count', -1) do
      delete :destroy, id: @poster
    end

    assert_response 204
  end
end
