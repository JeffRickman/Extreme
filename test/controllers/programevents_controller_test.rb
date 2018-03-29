require 'test_helper'

class ProgrameventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programevent = programevents(:one)
  end

  test "should get index" do
    get programevents_url
    assert_response :success
  end

  test "should get new" do
    get new_programevent_url
    assert_response :success
  end

  test "should create programevent" do
    assert_difference('Programevent.count') do
      post programevents_url, params: { programevent: { name: @programevent.name, program_id: @programevent.program_id } }
    end

    assert_redirected_to programevent_url(Programevent.last)
  end

  test "should show programevent" do
    get programevent_url(@programevent)
    assert_response :success
  end

  test "should get edit" do
    get edit_programevent_url(@programevent)
    assert_response :success
  end

  test "should update programevent" do
    patch programevent_url(@programevent), params: { programevent: { name: @programevent.name, program_id: @programevent.program_id } }
    assert_redirected_to programevent_url(@programevent)
  end

  test "should destroy programevent" do
    assert_difference('Programevent.count', -1) do
      delete programevent_url(@programevent)
    end

    assert_redirected_to programevents_url
  end
end
