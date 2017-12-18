@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "5555555555")

puts "1 User created"

@admin_user = AdminUser.create(email: "admin@test.com", 
                                password: "asdfasdf", 
                                password_confirmation: "asdfasdf", 
                                first_name: "Admin", 
                                last_name: "Name",
                                phone: "5555555555")

2.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @admin_user.id, overtime_request: 2.5)
end

puts "2 admin posts have been created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit Logs have been created"