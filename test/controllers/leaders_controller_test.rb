require 'test_helper'

class LeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leader = leaders(:one)
  end

  test "should get index" do
    get leaders_url
    assert_response :success
  end

  test "should get new" do
    get new_leader_url
    assert_response :success
  end

  test "should create leader" do
    assert_difference('Leader.count') do
      post leaders_url, params: { leader: { address_l1ne1: @leader.address_l1ne1, address_line2: @leader.address_line2, allergy: @leader.allergy, allergy_status: @leader.allergy_status, diet: @leader.diet, diet_status: @leader.diet_status, dob: @leader.dob, email: @leader.email, name: @leader.name, phone: @leader.phone, sex: @leader.sex, status: @leader.status } }
    end

    assert_redirected_to leader_url(Leader.last)
  end

  test "should show leader" do
    get leader_url(@leader)
    assert_response :success
  end

  test "should get edit" do
    get edit_leader_url(@leader)
    assert_response :success
  end

  test "should update leader" do
    patch leader_url(@leader), params: { leader: { address_l1ne1: @leader.address_l1ne1, address_line2: @leader.address_line2, allergy: @leader.allergy, allergy_status: @leader.allergy_status, diet: @leader.diet, diet_status: @leader.diet_status, dob: @leader.dob, email: @leader.email, name: @leader.name, phone: @leader.phone, sex: @leader.sex, status: @leader.status } }
    assert_redirected_to leader_url(@leader)
  end

  test "should destroy leader" do
    assert_difference('Leader.count', -1) do
      delete leader_url(@leader)
    end

    assert_redirected_to leaders_url
  end
end
