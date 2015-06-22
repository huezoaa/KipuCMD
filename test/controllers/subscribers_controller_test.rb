require 'test_helper'

class SubscribersControllerTest < ActionController::TestCase
  setup do
    @subscriber = subscribers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscribers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscriber" do
    assert_difference('Subscriber.count') do
      post :create, subscriber: { address_1: @subscriber.address_1, address_2: @subscriber.address_2, city: @subscriber.city, dob: @subscriber.dob, first_name: @subscriber.first_name, gender: @subscriber.gender, home_phone: @subscriber.home_phone, last_name: @subscriber.last_name, middle_initial: @subscriber.middle_initial, relationship: @subscriber.relationship, ssn: @subscriber.ssn, state: @subscriber.state, zipcode: @subscriber.zipcode }
    end

    assert_redirected_to subscriber_path(assigns(:subscriber))
  end

  test "should show subscriber" do
    get :show, id: @subscriber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subscriber
    assert_response :success
  end

  test "should update subscriber" do
    patch :update, id: @subscriber, subscriber: { address_1: @subscriber.address_1, address_2: @subscriber.address_2, city: @subscriber.city, dob: @subscriber.dob, first_name: @subscriber.first_name, gender: @subscriber.gender, home_phone: @subscriber.home_phone, last_name: @subscriber.last_name, middle_initial: @subscriber.middle_initial, relationship: @subscriber.relationship, ssn: @subscriber.ssn, state: @subscriber.state, zipcode: @subscriber.zipcode }
    assert_redirected_to subscriber_path(assigns(:subscriber))
  end

  test "should destroy subscriber" do
    assert_difference('Subscriber.count', -1) do
      delete :destroy, id: @subscriber
    end

    assert_redirected_to subscribers_path
  end
end
