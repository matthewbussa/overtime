@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User created"

@admin_user = AdminUser.create(email: "admin@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Admin", last_name: "Name")

2.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @admin_user.id)
end

puts "2 admin posts have been created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
