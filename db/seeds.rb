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
    Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit Logs have been created"