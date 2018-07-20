# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = [
  { name: 'Admin', code: 'admin' },
  { name: 'User', code: 'user' },
  { name: 'Line Manager', code: 'linemanager' }
]
roles.each { |r| Role.find_or_create_by(r) }

leave_configuration =  [
  { sick_leaves: 2.5 , privilege_leaves: 2.5 , casual_leaves: 2.5, work_from_home: 8 }
  ]
leave_configuration.each { |l| LeaveConfiguration.find_or_create_by(l) }

=begin
users = [ 
   { email: 'admin@gmail.com', password: 'Welcome123', role_id: Role.admin },
   { email: 'user@gmail.com', password: 'Welcome123', role_id: Role.admin }
        ]
users.each { |u| User.find_or_create_by(u) }
=end

User.find_or_create_by(email: "admin@kumolus.com", role_id: Role.admin) do |user|
  user.password = "Welcome123"
end

User.find_or_create_by(email: "user@kumolus.com", role_id: Role.user) do |user|
  user.password = "Welcome123"
end