require 'test_helper'

class TermDevsControllerTest < ActionController::TestCase
  setup do
    @term_dev = term_devs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_devs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_dev" do
    assert_difference('TermDev.count') do
      post :create, term_dev: { RackID: @term_dev.RackID, name: @term_dev.name, type: @term_dev.type }
    end

    assert_redirected_to term_dev_path(assigns(:term_dev))
  end

  test "should show term_dev" do
    get :show, id: @term_dev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_dev
    assert_response :success
  end

  test "should update term_dev" do
    patch :update, id: @term_dev, term_dev: { RackID: @term_dev.RackID, name: @term_dev.name, type: @term_dev.type }
    assert_redirected_to term_dev_path(assigns(:term_dev))
  end

  test "should destroy term_dev" do
    assert_difference('TermDev.count', -1) do
      delete :destroy, id: @term_dev
    end

    assert_redirected_to term_devs_path
  end
end
