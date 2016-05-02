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

  def test_an_attendee_can_RSVP_for_an_event
    skip
		# As someone who wants to attend Josh's birthday party
		# When he gives me a link to the event
		# I see the title is "Josh's Birthday Party"
		# And I see the date is "14 March 2017"
		# And I see the time is "8:00 PM"
		# And I see the location is "8492 Main st."
		# And I see the description is "Come celebrate my birthday!"
		# I see that there are no attendees
		# I see a form where I can RSVP
		# When I enter "Brant Faulkner" into the form and submit it
		# Then am left on the same page
		# But now I see that "Brant Faulkner" is listed as an attendee
		# Other
  end
end
