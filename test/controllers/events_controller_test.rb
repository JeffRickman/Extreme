require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { address_line1: @event.address_line1, address_line2: @event.address_line2, description: @event.description, details: @event.details, event_date: @event.event_date, leader_name: @event.leader_name, leader_phone: @event.leader_phone, name: @event.name, status: @event.status } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { address_line1: @event.address_line1, address_line2: @event.address_line2, description: @event.description, details: @event.details, event_date: @event.event_date, leader_name: @event.leader_name, leader_phone: @event.leader_phone, name: @event.name, status: @event.status } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
