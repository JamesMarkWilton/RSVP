require 'test_helper'

class UserIntegrationTest < ActionDispatch::IntegrationTest
  def test_the_host_can_create_an_event
    page.visit events_path
    assert page.has_content?("Title")
    assert page.has_content?("Host")
    assert page.has_content?("Date")
    assert page.has_content?("Address")
    assert page.has_button?("Create Event")

    page.fill_in("event_title", with: "My Day of Love!")
    page.fill_in("event_host", with: "Herman")
    page.fill_in("event_street", with: "1313 Mockingbird Ln")
    page.fill_in("event_city", with: "Oakland")
    page.fill_in("event_state", with: "CA")
    page.fill_in("event_zip", with: "94609")
    page.fill_in("event_description", with: "Come show me how much I rock!")
    page.click_button("Create Event")

    assert page.has_content?("My Day of Love!")
    assert page.has_content?("Herman")
    assert page.has_content?("1313 Mockingbird Ln")
    assert page.has_content?("Come show me how much I rock!")
  end

  def test_an_guest_can_RSVP_for_an_event
    event = Event.create!(title: "Josh's Birthday Party",
                          description: "Come celebrate my birthday")
    page.visit event_path event
    refute page.has_content?("Brant Faulkner")

    assert page.has_content?("Josh's Birthday Party")
    assert page.has_content?("Come celebrate my birthday")
    assert page.has_button?("RSVP")

    page.fill_in("attendee_name", with: "Brant Faulkner")
    page.click_button("RSVP")
    assert page.has_content?("Brant Faulkner")
  end
end
