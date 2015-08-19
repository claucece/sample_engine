require 'test_helper'

module Billingleap
  class ItemsControllerTest < ActionController::TestCase
    setup do
      @item = billingleap_items(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:items)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create item" do
      assert_difference('Item.count') do
        post :create, item: { category_id: @item.category_id, image: @item.image, text: @item.text, title: @item.title }
      end

      assert_redirected_to item_path(assigns(:item))
    end

    test "should show item" do
      get :show, id: @item
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @item
      assert_response :success
    end

    test "should update item" do
      patch :update, id: @item, item: { category_id: @item.category_id, image: @item.image, text: @item.text, title: @item.title }
      assert_redirected_to item_path(assigns(:item))
    end

    test "should destroy item" do
      assert_difference('Item.count', -1) do
        delete :destroy, id: @item
      end

      assert_redirected_to items_path
    end
  end
end
