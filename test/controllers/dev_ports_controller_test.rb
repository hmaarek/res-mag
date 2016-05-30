require 'test_helper'

class DevPortsControllerTest < ActionController::TestCase
  setup do
    @dev_port = dev_ports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dev_ports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dev_port" do
    assert_difference('DevPort.count') do
      post :create, dev_port: { RackID: @dev_port.RackID, fiberid: @dev_port.fiberid, name: @dev_port.name, odfid: @dev_port.odfid, portno: @dev_port.portno, type: @dev_port.type }
    end

    assert_redirected_to dev_port_path(assigns(:dev_port))
  end

  test "should show dev_port" do
    get :show, id: @dev_port
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dev_port
    assert_response :success
  end

  test "should update dev_port" do
    patch :update, id: @dev_port, dev_port: { RackID: @dev_port.RackID, fiberid: @dev_port.fiberid, name: @dev_port.name, odfid: @dev_port.odfid, portno: @dev_port.portno, type: @dev_port.type }
    assert_redirected_to dev_port_path(assigns(:dev_port))
  end

  test "should destroy dev_port" do
    assert_difference('DevPort.count', -1) do
      delete :destroy, id: @dev_port
    end

    assert_redirected_to dev_ports_path
  end
end
