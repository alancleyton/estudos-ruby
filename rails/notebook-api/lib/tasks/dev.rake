namespace :dev do
  desc "Create setup for development environment"
  task setup: :environment do
    10.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65)
      )
    end
  end
end
