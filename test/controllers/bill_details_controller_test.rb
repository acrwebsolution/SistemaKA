require 'test_helper'

class BillDetailsControllerTest < ActionController::TestCase
  setup do
    @bill_detail = bill_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_detail" do
    assert_difference('BillDetail.count') do
      post :create, bill_detail: { codcliente: @bill_detail.codcliente, codpedprod: @bill_detail.codpedprod, nrofactura: @bill_detail.nrofactura, precio: @bill_detail.precio }
    end

    assert_redirected_to bill_detail_path(assigns(:bill_detail))
  end

  test "should show bill_detail" do
    get :show, id: @bill_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_detail
    assert_response :success
  end

  test "should update bill_detail" do
    patch :update, id: @bill_detail, bill_detail: { codcliente: @bill_detail.codcliente, codpedprod: @bill_detail.codpedprod, nrofactura: @bill_detail.nrofactura, precio: @bill_detail.precio }
    assert_redirected_to bill_detail_path(assigns(:bill_detail))
  end

  test "should destroy bill_detail" do
    assert_difference('BillDetail.count', -1) do
      delete :destroy, id: @bill_detail
    end

    assert_redirected_to bill_details_path
  end
end
