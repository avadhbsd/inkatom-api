require 'test_helper'

class PapersControllerTest < ActionController::TestCase
  setup do
    @paper = papers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papers)
  end

  test "should create paper" do
    assert_difference('Paper.count') do
      post :create, paper: { aditionalPrice: @paper.aditionalPrice, paerMeta: @paper.paerMeta, paperName: @paper.paperName, poster_id: @paper.poster_id }
    end

    assert_response 201
  end

  test "should show paper" do
    get :show, id: @paper
    assert_response :success
  end

  test "should update paper" do
    put :update, id: @paper, paper: { aditionalPrice: @paper.aditionalPrice, paerMeta: @paper.paerMeta, paperName: @paper.paperName, poster_id: @paper.poster_id }
    assert_response 204
  end

  test "should destroy paper" do
    assert_difference('Paper.count', -1) do
      delete :destroy, id: @paper
    end

    assert_response 204
  end
end
