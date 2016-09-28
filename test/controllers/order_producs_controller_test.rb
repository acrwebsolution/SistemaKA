require 'test_helper'

class OrderProducsControllerTest < ActionController::TestCase
  setup do
    @order_produc = order_producs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_producs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_produc" do
    assert_difference('OrderProduc.count') do
      post :create, order_produc: { cantidad: @order_produc.cantidad, codcliente: @order_produc.codcliente, codpedprod: @order_produc.codpedprod, codproducto: @order_produc.codproducto }
    end

    assert_redirected_to order_produc_path(assigns(:order_produc))
  end

  test "should show order_produc" do
    get :show, id: @order_produc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_produc
    assert_response :success
  end

  test "should update order_produc" do
    patch :update, id: @order_produc, order_produc: { cantidad: @order_produc.cantidad, codcliente: @order_produc.codcliente, codpedprod: @order_produc.codpedprod, codproducto: @order_produc.codproducto }
    assert_redirected_to order_produc_path(assigns(:order_produc))
  end

  test "should destroy order_produc" do
    assert_difference('OrderProduc.count', -1) do
      delete :destroy, id: @order_produc
    end

    assert_redirected_to order_producs_path
  end
end
