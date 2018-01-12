# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#
# Gateway.create(name: 'PayPal')
# Gateway.create(name: 'Bitcoin')
# Gateway.create(name: 'Litecoin')
# Gateway.create(name: 'Bitcoin Cash')
# Gateway.create(name: 'Ethereum')
# #
# #
# Service::Category.create(id: 1, name: 'TV')
# Service::Category.create(id: 2, name: 'Sports')
# Service::Category.create(id: 3, name: 'Music')
# Service::Category.create(id: 4, name: 'VPN')
# Service::Category.create(id: 5, name: 'News')
# Service::Category.create(id: 6, name: 'Educational')


# TV Show Service::Items :

Service::Item.create(id: 1, name: 'Crunchyroll', price: 4.99, service_category_id: 1)
Service::Item.create(id: 2, name: 'DirectTV', price: 4.99, service_category_id: 1)
Service::Item.create(id: 3, name: 'HBO Now', price: 4.99, service_category_id: 1)
Service::Item.create(id: 4, name: 'History Vault', price: 4.99, service_category_id: 1)
Service::Item.create(id: 5, name: 'Hulu No Ads', price: 4.99, service_category_id: 1)
Service::Item.create(id: 6, name: 'Netflix', price: 4.99, service_category_id: 1)

# Sports Service::Items :

Service::Item.create(id: 7, name: 'Fubo PRO', price: 4.99, service_category_id: 2)
Service::Item.create(id: 8, name: 'NBA League Pass (US)', price: 4.99, service_category_id: 2)
Service::Item.create(id: 9, name: 'NBA International', price: 4.99, service_category_id: 2)
Service::Item.create(id: 10, name: 'NFL Sunday Ticket MAX', price: 4.99, service_category_id: 2)
Service::Item.create(id: 11, name: 'NFL Sunday Ticket REGULAR', price: 4.99, service_category_id: 2)
Service::Item.create(id: 12, name: 'NFL Gamepass (International)', price: 4.99, service_category_id: 2)
Service::Item.create(id: 13, name: 'NFL Gamepass (US)', price: 4.99, service_category_id: 2)
Service::Item.create(id: 14, name: 'NHL', price: 4.99, service_category_id: 2)
Service::Item.create(id: 15, name: 'WWE', price: 4.99, service_category_id: 2)

#Music Service::Items :

Service::Item.create(id: 16, name: 'Deezer', price: 4.99, service_category_id: 3)
Service::Item.create(id: 17, name: 'Napster', price: 4.99, service_category_id: 3)
Service::Item.create(id: 18, name: 'Pandora', price: 4.99, service_category_id: 3)
Service::Item.create(id: 19, name: 'Spotify', price: 4.99, service_category_id: 3)

#VPN Service::Items :

Service::Item.create(id: 20, name: 'NordVPN (200+ days)', price: 4.99, service_category_id: 4)

#News Service::Items :

Service::Item.create(id: 21, name: 'New York Times', price: 4.99, service_category_id: 5)
Service::Item.create(id: 22, name: 'WallStreet Journal', price: 4.99, service_category_id: 5)
Service::Item.create(id: 23, name: 'Washington Post', price: 4.99, service_category_id: 5)

#Educational Service::Items :

Service::Item.create(id: 24, name: 'Chegg', price: 4.99, service_category_id: 6)
Service::Item.create(id: 25, name: 'CourseHero Premier', price: 999999999, service_category_id: 6)
Service::Item.create(id: 26, name: 'Grammarly', price: 4.99, service_category_id: 6)
Service::Item.create(id: 27, name: 'Lynda', price: 4.99, service_category_id: 6)
