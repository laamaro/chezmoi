if Rails.env.development?
  puts "cleaning database..."

  Country.destroy_all
  User.destroy_all

  #---------- COUNTRIES
  puts "creating countries..."
  Country.create!(name: 'Brazil', code: 'BR')
  Country.create!(name: 'France', code: 'FR')

  #------------ USERS
  puts "creating users..."
  User.create!(first_name: 'Branquinho', last_name: 'Chat',
               user_type: 0, email: 'branquinho@email.com', password: '123123')
end
