require "test_helper"

class UserIntegrationTest < ActionDispatch::IntegrationTest
  def test_user_can_create_an_event
		# As someone who hosts events,
		# I want a convenient way to invite people
		# and know who is planning on attending.
		# When I go to the main page of the site,
		# I see form that lets me enter details for my event.
		# I enter "Josh's Birthday Party" for the title
		# And I enter "14 March 2017" for the date
		# And I enter "8:00 PM" for the time
		# And I enter "8492 Main st." for the location
		# And I enter "Come celebrate my birthday!" for the description
		# When I submit the form
		# I see that I'm on a page where I can sign up.
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
