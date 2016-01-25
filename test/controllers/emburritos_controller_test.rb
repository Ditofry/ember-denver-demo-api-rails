require 'test_helper'

class EmburritosControllerTest < ActionController::TestCase
  setup do
    @emburrito = emburritos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emburritos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emburrito" do
    assert_difference('Emburrito.count') do
      post :create, emburrito: { introduction: @emburrito.introduction, name: @emburrito.name }
    end

    assert_redirected_to emburrito_path(assigns(:emburrito))
  end

  test "should show emburrito" do
    get :show, id: @emburrito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emburrito
    assert_response :success
  end

  test "should update emburrito" do
    patch :update, id: @emburrito, emburrito: { introduction: @emburrito.introduction, name: @emburrito.name }
    assert_redirected_to emburrito_path(assigns(:emburrito))
  end

  test "should destroy emburrito" do
    assert_difference('Emburrito.count', -1) do
      delete :destroy, id: @emburrito
    end

    assert_redirected_to emburritos_path
  end
end
