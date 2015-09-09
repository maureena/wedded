require 'faker'

# Create Weddings

5.times do
  Wedding.create!(
    betrothed_one:      Faker::Lorem.name,
    betrothed_two:      Faker::Name.name,
    date:               rand(1.year).from_now,
    story:              Faker::Lorem.paragraph(3) 
    )
end

weddings = Wedding.all

15.times do
  Event.create!(
    wedding:            weddings.sample,
    name:               Faker::Lorem.words(rand(1..3)).to_s,
    event_type:         Faker::Lorem.words(rand(1..3)).to_s,
    event_date:         rand(1.year).from_now,
    venue:              Faker::Company.name,
    venue_street:       Faker::Address.street_address,
    venue_city:         Faker::Address.city,
    venue_state:        Faker::Address.state,
    venue_zip:          Faker::Address.zip_code,
    venue_description:  Faker::Lorem.paragraphs(3).to_s,
    dress_code:         Faker::Lorem.words(rand(1..3)).to_s
    )
end

puts "Seed finished"
puts "#{Wedding.count} weddings created."
puts "#{Event.count} events created."
