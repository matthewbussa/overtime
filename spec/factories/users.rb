FactoryGirl.define do
	factory :user do
		first_name 'Jon'
		last_name 'Snow'
		email 'test@test.com'
		password 'asdfasdf'
		password_confirmation 'asdfasdf'
	end

	factory :admin_user, class: "User" do 
		first_name 'Admin'
		last_name 'User'
		email "admin@admin.com"
		password 'asdfasdf'
		password_confirmation 'asdfasdf'
	end

end