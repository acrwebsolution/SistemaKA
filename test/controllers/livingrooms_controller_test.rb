require 'test_helper'

class LivingroomsControllerTest < ActionController::TestCase
  setup do
    @livingroom = livingrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livingrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livingroom" do
    assert_difference('Livingroom.count') do
      post :create, livingroom: { capacidad: @livingroom.capacidad, codcliente: @livingroom.codcliente, codlocal: @livingroom.codlocal, codsala: @livingroom.codsala, descripcion: @livingroom.descripcion, precioconsumo: @livingroom.precioconsumo }
    end

    assert_redirected_to livingroom_path(assigns(:livingroom))
  end

  test "should show livingroom" do
    get :show, id: @livingroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livingroom
    assert_response :success
  end

  test "should update livingroom" do
    patch :update, id: @livingroom, livingroom: { capacidad: @livingroom.capacidad, codcliente: @livingroom.codcliente, codlocal: @livingroom.codlocal, codsala: @livingroom.codsala, descripcion: @livingroom.descripcion, precioconsumo: @livingroom.precioconsumo }
    assert_redirected_to livingroom_path(assigns(:livingroom))
  end

  test "should destroy livingroom" do
    assert_difference('Livingroom.count', -1) do
      delete :destroy, id: @livingroom
    end

    assert_redirected_to livingrooms_path
  end
end
