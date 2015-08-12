require 'test_helper'

class PdoctorsControllerTest < ActionController::TestCase
  setup do
    @pdoctor = pdoctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pdoctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pdoctor" do
    assert_difference('Pdoctor.count') do
      post :create, pdoctor: { age: @pdoctor.age, breed: @pdoctor.breed, dateofvist: @pdoctor.dateofvist, nameofpet: @pdoctor.nameofpet, type: @pdoctor.type, weight: @pdoctor.weight }
    end

    assert_redirected_to pdoctor_path(assigns(:pdoctor))
  end

  test "should show pdoctor" do
    get :show, id: @pdoctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pdoctor
    assert_response :success
  end

  test "should update pdoctor" do
    patch :update, id: @pdoctor, pdoctor: { age: @pdoctor.age, breed: @pdoctor.breed, dateofvist: @pdoctor.dateofvist, nameofpet: @pdoctor.nameofpet, type: @pdoctor.type, weight: @pdoctor.weight }
    assert_redirected_to pdoctor_path(assigns(:pdoctor))
  end

  test "should destroy pdoctor" do
    assert_difference('Pdoctor.count', -1) do
      delete :destroy, id: @pdoctor
    end

    assert_redirected_to pdoctors_path
  end
end
