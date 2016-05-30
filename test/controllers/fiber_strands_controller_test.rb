require 'test_helper'

class FiberStrandsControllerTest < ActionController::TestCase
  setup do
    @fiber_strand = fiber_strands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fiber_strands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fiber_strand" do
    assert_difference('FiberStrand.count') do
      post :create, fiber_strand: { cableid: @fiber_strand.cableid, name: @fiber_strand.name, port1id: @fiber_strand.port1id, port2id: @fiber_strand.port2id }
    end

    assert_redirected_to fiber_strand_path(assigns(:fiber_strand))
  end

  test "should show fiber_strand" do
    get :show, id: @fiber_strand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fiber_strand
    assert_response :success
  end

  test "should update fiber_strand" do
    patch :update, id: @fiber_strand, fiber_strand: { cableid: @fiber_strand.cableid, name: @fiber_strand.name, port1id: @fiber_strand.port1id, port2id: @fiber_strand.port2id }
    assert_redirected_to fiber_strand_path(assigns(:fiber_strand))
  end

  test "should destroy fiber_strand" do
    assert_difference('FiberStrand.count', -1) do
      delete :destroy, id: @fiber_strand
    end

    assert_redirected_to fiber_strands_path
  end
end
