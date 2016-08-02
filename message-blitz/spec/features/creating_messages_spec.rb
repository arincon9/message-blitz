require "spec_helper"

RSpec.describe "Users can create new messages" do
	it "with valid attributes" do
		visit "/"

		click_link "Blitz a Friend"

		fill_in "Name", 							with: "Alex Rincon"
		fill_in "Phone Number", with: "(123) 456-7890"
		click_button "Send"

		expect(page).to have_content "Message Blitz has been sent."
	end
end
