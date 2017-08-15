# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Investor.destroy_all

user1 = User.new({ first_name: 'Ash', last_name: 'Madi', email: 'a.madi27@gmail.com', address: 'Amsterdam South', avatar: 'https://avatars0.githubusercontent.com/u/29701748?v=4', password: '123456'})
if user1.save
  puts "#{user1.first_name} saved"
end

user2 = User.new({ first_name: 'Sandi', last_name: 'Huynh', email: 'shopelite510@gmail.com', address: 'Amsterdam South', avatar: "https://avatars0.githubusercontent.com/u/26726874?v=3", password: '123456'})
if user2.save
  puts "#{user2.first_name} saved"
end

user3 = User.new({ first_name: 'Ruby', last_name: 'Kim', email: 'rubyk70231@gmail.com', address: 'Amsterdam East', avatar: 'https://avatars3.githubusercontent.com/u/29701859?v=3', password: '123456'})
if user3.save
  puts "#{user3.first_name} saved"
end



investor01 = Investor.new({ first_name: 'David', last_name: 'Tepper', fund_name: 'Appaloosa LP', portfolio_value: '$6,087 Mil', last_updated: "", avatar: ""})
if investor01.save
  puts "#{investor01.last_name} saved"
end

investor02 = Investor.new({ first_name: 'Warren', last_name: 'Buffet', fund_name: 'Berkshire Hathaway', portfolio_value: '$161,874 Mil', last_updated: "", avatar: ""})
if investor02.save
  puts "#{investor02.last_name} saved"
end

investor03 = Investor.new({ first_name: 'Seth', last_name: 'Klarman', fund_name: 'The Baupost Group', portfolio_value: '$8,697 Mil', last_updated: "", avatar: ""})
if investor03.save
  puts "#{investor03.last_name} saved"
end

investor04 = Investor.new({ first_name: 'carl', last_name: 'Icahn', fund_name: 'Icahn Capital Management LP', portfolio_value: '$19,937 Mil', last_updated: "", avatar: ""})
if investor04.save
  puts "#{investor04.last_name} saved"
end

investor05 = Investor.new({ first_name: 'Bill', last_name: 'Gates', fund_name: 'Bill & Melinda Gates Foundation Trust', portfolio_value: '$161,874 Mil', last_updated: "", avatar: ""})
if investor05.save
  puts "#{investor05.last_name} saved"
end

investor06 = Investor.new({ first_name: 'T Boone', last_name: 'Pickens', fund_name: 'BP Capital Fund Advisors, LLC', portfolio_value: '$209 Mil', last_updated: "", avatar: ""})
if investor06.save
  puts "#{investor06.last_name} saved"
end

investor07 = Investor.new({ first_name: 'Glenn', last_name: 'Greenberg', fund_name: 'Brave Warrior Advisors, LLC', portfolio_value: '$2,263 Mil', last_updated: "", avatar: ""})
if investor07.save
  puts "#{investor07.last_name} saved"
end

investor08 = Investor.new({ first_name: 'Mohnish', last_name: 'Pabrai', fund_name: 'Dalal Street, LLC', portfolio_value: '$405 Mil', last_updated: "", avatar: ""})
if investor08.save
  puts "#{investor08.last_name} saved"
end

investor09 = Investor.new({ first_name: 'David', last_name: 'Einhorn', fund_name: 'Greenlight Capital', portfolio_value: '$7,195 Mil', last_updated: "", avatar: ""})
if investor09.save
  puts "#{investor09.last_name} saved"
end

investor10 = Investor.new({ first_name: 'Dan', last_name: 'Loeb', fund_name: 'Third Point, LLC', portfolio_value: '$11,282 Mil', last_updated: "", avatar: ""})
if investor10.save
  puts "#{investor10.last_name} saved"
end




