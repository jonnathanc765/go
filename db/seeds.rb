# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users_roles")
Role.destroy_all
User.destroy_all

Role.create(name: "super-admin")
Role.create(name: "admin")
Role.create(name: "employee")
Role.create(name: "dispatcher")
Role.create(name: "delivery-man")
Role.create(name: "client")

super_admin = User.create(first_name: "Root", last_name: "User", email: "superadmin@htdevs.com", password: "password", phone: "+571584455241", )
super_admin.add_role "super-admin"


case Rails.env
when 'development'

  admin = User.create(first_name: "Admin", last_name: "User", email: "admin@htdevs.com", password: "password", phone: "+5715884455241", )
  admin.add_role "admin"

  employee = User.create(first_name: "Employee", last_name: "User", email: "employee@htdevs.com", password: "password", phone: "+5715884455241", )
  employee.add_role "employee"

  dispatcher = User.create(first_name: "Dispatcher", last_name: "User", email: "dispatcher@htdevs.com", password: "password", phone: "+5715884455241", )
  dispatcher.add_role "dispatcher"

  delivery_man = User.create(first_name: "Delivery-man", last_name: "User", email: "delivery-man@htdevs.com", password: "password", phone: "+5715884455241", )
  delivery_man.add_role "delivery-man"

  client = User.create(first_name: "Client", last_name: "User", email: "client@htdevs.com", password: "password", phone: "+5715884455241", )
  client.add_role "client"


when 'test'
  # test-specific seeds ...
  # (Consider having your tests set up the data they need
  # themselves instead of seeding it here!)

#   Role.create(name: 'super-admin')
#   Role.create(name: 'admin')
#   Role.create(name: 'employee')
#   Role.create(name: 'super-admin')
  

when 'production'
  # production seeds (if any) ...

end
