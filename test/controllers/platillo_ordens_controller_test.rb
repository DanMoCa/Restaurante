require 'test_helper'

class PlatilloOrdensControllerTest < ActionController::TestCase
  setup do
    @platillo_orden = platillo_ordens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platillo_ordens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platillo_orden" do
    assert_difference('PlatilloOrden.count') do
      post :create, platillo_orden: { idorden: @platillo_orden.idorden, idplatillo: @platillo_orden.idplatillo }
    end

    assert_redirected_to platillo_orden_path(assigns(:platillo_orden))
  end

  test "should show platillo_orden" do
    get :show, id: @platillo_orden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platillo_orden
    assert_response :success
  end

  test "should update platillo_orden" do
    patch :update, id: @platillo_orden, platillo_orden: { idorden: @platillo_orden.idorden, idplatillo: @platillo_orden.idplatillo }
    assert_redirected_to platillo_orden_path(assigns(:platillo_orden))
  end

  test "should destroy platillo_orden" do
    assert_difference('PlatilloOrden.count', -1) do
      delete :destroy, id: @platillo_orden
    end

    assert_redirected_to platillo_ordens_path
  end
end
