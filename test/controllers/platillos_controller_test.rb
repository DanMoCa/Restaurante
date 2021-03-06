require 'test_helper'

class PlatillosControllerTest < ActionController::TestCase
  setup do
    @platillo = platillos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platillos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platillo" do
    assert_difference('Platillo.count') do
      post :create, platillo: { categoria: @platillo.categoria, descripcion: @platillo.descripcion, image: @platillo.image, nombre: @platillo.nombre, precio: @platillo.precio }
    end

    assert_redirected_to platillo_path(assigns(:platillo))
  end

  test "should show platillo" do
    get :show, id: @platillo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platillo
    assert_response :success
  end

  test "should update platillo" do
    patch :update, id: @platillo, platillo: { categoria: @platillo.categoria, descripcion: @platillo.descripcion, image: @platillo.image, nombre: @platillo.nombre, precio: @platillo.precio }
    assert_redirected_to platillo_path(assigns(:platillo))
  end

  test "should destroy platillo" do
    assert_difference('Platillo.count', -1) do
      delete :destroy, id: @platillo
    end

    assert_redirected_to platillos_path
  end
end
