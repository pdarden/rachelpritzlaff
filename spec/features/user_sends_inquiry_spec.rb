require 'spec_helper'

feature 'User sends inquiry through contact form' do
  scenario 'user fills all required information' do
    # Clear out mail deliveries
    ActionMailer::Base.deliveries = []

    visit contact_path
    fill_in 'First Name', with: 'Matt'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Your Email', with: 'dr.who@tardis.com'
    fill_in 'Subject', with: 'Where do you want to go?'
    fill_in 'Your Message Here', with: 'Mars?'
    click_button 'Send'
    expect(page).to have_content "Your message has been sent. We'll get in touch with you shortly."

    expect(ActionMailer::Base.deliveries.size).to eq(1)
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email).to have_subject('Where do you want to go?')
    expect(last_email).to deliver_to('rpritzlaff.tba@gmail.com')
    expect(last_email).to deliver_from('dr.who@tardis.com')
    expect(last_email).to have_body_text('Mars?')
  end
end
