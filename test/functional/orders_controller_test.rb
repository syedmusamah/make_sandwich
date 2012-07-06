require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { Bread_name: @order.Bread_name, By: @order.By, Cheese_name: @order.Cheese_name, Topping_1: @order.Topping_1, Topping_2: @order.Topping_2, Topping_3: @order.Topping_3, Type_name: @order.Type_name }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { Bread_name: @order.Bread_name, By: @order.By, Cheese_name: @order.Cheese_name, Topping_1: @order.Topping_1, Topping_2: @order.Topping_2, Topping_3: @order.Topping_3, Type_name: @order.Type_name }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
