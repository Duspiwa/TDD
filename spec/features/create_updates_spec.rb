require 'rails_helper.rb'

feature 'Creating updates' do 
	scenario 'can create job' do
		#visit root
		visit '/'
		#click create update link
		click_link 'Create update'
		#fill in the form with needed info
		fill_in 'Title', with:'title'
		fill_in 'Caption', with:'caption'
		#click submit button
		click_button 'Create Update'
		#expect page to havethe contant submitted
		expect(page).to have_content('title')
		expect(page).to have_content('caption')


		end
	end



