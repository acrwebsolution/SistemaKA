require 'test_helper'

class MusicalOrdersControllerTest < ActionController::TestCase
  setup do
    @musical_order = musical_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musical_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musical_order" do
    assert_difference('MusicalOrder.count') do
      post :create, musical_order: { codcliente: @musical_order.codcliente, codmusica: @musical_order.codmusica, codpedmus: @musical_order.codpedmus }
    end

    assert_redirected_to musical_order_path(assigns(:musical_order))
  end

  test "should show musical_order" do
    get :show, id: @musical_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musical_order
    assert_response :success
  end

  test "should update musical_order" do
    patch :update, id: @musical_order, musical_order: { codcliente: @musical_order.codcliente, codmusica: @musical_order.codmusica, codpedmus: @musical_order.codpedmus }
    assert_redirected_to musical_order_path(assigns(:musical_order))
  end

  test "should destroy musical_order" do
    assert_difference('MusicalOrder.count', -1) do
      delete :destroy, id: @musical_order
    end

    assert_redirected_to musical_orders_path
  end
end
