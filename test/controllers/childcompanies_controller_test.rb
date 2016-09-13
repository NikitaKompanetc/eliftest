require 'test_helper'

class ChildcompaniesControllerTest < ActionController::TestCase
  setup do
    @childcompany = childcompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childcompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childcompany" do
    assert_difference('Childcompany.count') do
      post :create, childcompany: { company: @childcompany.company, cost1: @childcompany.cost1, cost2: @childcompany.cost2 }
    end

    assert_redirected_to childcompany_path(assigns(:childcompany))
  end

  test "should show childcompany" do
    get :show, id: @childcompany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childcompany
    assert_response :success
  end

  test "should update childcompany" do
    patch :update, id: @childcompany, childcompany: { company: @childcompany.company, cost1: @childcompany.cost1, cost2: @childcompany.cost2 }
    assert_redirected_to childcompany_path(assigns(:childcompany))
  end

  test "should destroy childcompany" do
    assert_difference('Childcompany.count', -1) do
      delete :destroy, id: @childcompany
    end

    assert_redirected_to childcompanies_path
  end
end
