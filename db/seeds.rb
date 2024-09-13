# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

require "open-uri"


puts "Cleaning users and dependencies"
User.destroy_all

puts "Creating user"
[ 'user', 'organizer' ].each do |name|
  User.create!(
    name: name,
    role: name,
    email: "#{name}@example.com",
    password_digest: BCrypt::Password.create("ABC1234567890")
  )
end

puts "Creating users events"
User.organizer.each do |user|
  rand(3..10).times do |_|
    start_date = rand(30.days).hours.from_now

    user.events.create!(
      name: Faker::Book.title,
      start_date: start_date,
      content: Faker::Lorem.paragraphs
    )

    user.events.each do |event|
      url = URI.parse(Event::FAKE_IMAGES.sample)
      filename = File.basename(url.path)
      file = URI.open(url)
      event.images.attach(io: file, filename: filename)
    end
  end
end
