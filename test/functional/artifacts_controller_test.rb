require 'test_helper'

class ArtifactsControllerTest < ActionController::TestCase
  setup do
    @artifact = artifacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artifacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artifact" do
    assert_difference('Artifact.count') do
      post :create, :artifact => @artifact.attributes
    end

    assert_redirected_to artifact_path(assigns(:artifact))
  end

  test "should show artifact" do
    get :show, :id => @artifact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @artifact.to_param
    assert_response :success
  end

  test "should update artifact" do
    put :update, :id => @artifact.to_param, :artifact => @artifact.attributes
    assert_redirected_to artifact_path(assigns(:artifact))
  end

  test "should destroy artifact" do
    assert_difference('Artifact.count', -1) do
      delete :destroy, :id => @artifact.to_param
    end

    assert_redirected_to artifacts_path
  end
end
