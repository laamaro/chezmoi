if Rails.env.development?
  puts "cleaning database..."

  Country.destroy_all

  #---------- COUNTRIES
  puts "creating countries..."
  Country.create!(name: 'Brazil', code: 'BR')
  Country.create!(name: 'France', code: 'FR')
end
