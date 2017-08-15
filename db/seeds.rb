# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Investor.destroy_all
Stock.destroy_all

puts "Creating users..."
user_ash = User.create!({ username: 'Ash', email: 'a.madi27@gmail.com',
  # avatar: 'https://avatars0.githubusercontent.com/u/29701748?v=4',
  password: '123456'})

user_sandi = User.create!({ username: 'Sandi', email: 'shopelite510@gmail.com',
  # avatar: "https://avatars0.githubusercontent.com/u/26726874?v=3",
  password: '123456'})

user_ruby = User.create!({ username: 'Ruby', email: 'rubyk70231@gmail.com',
  # avatar: 'https://avatars3.githubusercontent.com/u/29701859?v=3',
  password: '123456'})

puts "Creating investors..."
investor_tepper = Investor.create!({ first_name: 'David', last_name: 'Tepper', fund_name: 'Appaloosa LP', portfolio_value: '$6,087 Mil', last_update: "",
  # avatar: ""
  })
investor_buffett = Investor.create!({ first_name: 'Warren', last_name: 'Buffet', fund_name: 'Berkshire Hathaway', portfolio_value: '$161,874 Mil', last_update: "",
  # avatar: ""
  })
investor_klarman = Investor.create!({ first_name: 'Seth', last_name: 'Klarman', fund_name: 'The Baupost Group', portfolio_value: '$8,697 Mil', last_update: "",
  # avatar: ""
  })
investor_icahn = Investor.create!({ first_name: 'carl', last_name: 'Icahn', fund_name: 'Icahn Capital Management LP', portfolio_value: '$19,937 Mil', last_update: "",
  # avatar: ""
  })
investor_gates = Investor.create!({ first_name: 'Bill', last_name: 'Gates', fund_name: 'Bill & Melinda Gates Foundation Trust', portfolio_value: '$161,874 Mil', last_update: "",
  # avatar: ""
  })
investor_pickens = Investor.create!({ first_name: 'T Boone', last_name: 'Pickens', fund_name: 'BP Capital Fund Advisors, LLC', portfolio_value: '$209 Mil', last_update: "",
  # avatar: ""
  })
investor_greenberg = Investor.create!({ first_name: 'Glenn', last_name: 'Greenberg', fund_name: 'Brave Warrior Advisors, LLC', portfolio_value: '$2,263 Mil', last_update: "",
  # avatar: ""
  })
investor_pabrai = Investor.create!({ first_name: 'Mohnish', last_name: 'Pabrai', fund_name: 'Dalal Street, LLC', portfolio_value: '$405 Mil', last_update: "",
  # avatar: ""
  })
investor_einhorn = Investor.create!({ first_name: 'David', last_name: 'Einhorn', fund_name: 'Greenlight Capital', portfolio_value: '$7,195 Mil', last_update: "",
  # avatar: ""
  })
investor_loeb = Investor.create!({ first_name: 'Dan', last_name: 'Loeb', fund_name: 'Third Point, LLC', portfolio_value: '$11,282 Mil', last_update: "",
  # avatar: ""
  })

puts "Creating stocks..."
stock_agn = Stock.create!({ ticker: "AGN", company_name: "Allergan plc", sector: "Healthcare", current_price: 232 })

stock_goog = Stock.create!({ ticker: "GOOG", company_name: "Alphabet Inc.", sector: "Technology", current_price: 920 })

stock_baba = Stock.create!({ ticker: "BABA", company_name: "Alibaba Group Holding Limited", sector: "Services", current_price: 155 })


puts "Creating investor stocks..."
stock_tepper_agn = InvestorStock.create!(investor: investor_tepper, stock: stock_agn)

stock_tepper_goog = InvestorStock.create!(investor: investor_tepper, stock: stock_goog)

stock_tepper_baba = InvestorStock.create!(investor: investor_tepper, stock: stock_baba)


puts "Creating stock histories..."
StockHistory.create!(
  investor_stock: stock_tepper_agn,
  quarter: "2nd 2017",
  shares_bought_sold: 500,
  percentage_change: 100,
  quarter_end_shares: 1000,
  avg_price: 250,
  market_cap: 78000,
  shares: 1000,
  value: 250000,
  percentage_weight: 15,
  percentage_share_change_from_last_q: 100,
  percentage_trade_impact: "",
  percentage_shares_outstanding: 0.75,
  three_month_percentage_change: 1,
  ytd_percentage_change: 12,
)

StockHistory.create!(
  investor_stock: stock_tepper_goog,
  quarter: "2nd 2017",
  shares_bought_sold: 500,
  percentage_change: 100,
  quarter_end_shares: 1000,
  avg_price: 250,
  market_cap: 78000,
  shares: 1000,
  value: 250000,
  percentage_weight: 15,
  percentage_share_change_from_last_q: 100,
  percentage_trade_impact: "",
  percentage_shares_outstanding: 0.75,
  three_month_percentage_change: 1,
  ytd_percentage_change: 12,
)

StockHistory.create!(
  investor_stock: stock_tepper_baba,
  quarter: "2nd 2017",
  shares_bought_sold: 500,
  percentage_change: 100,
  quarter_end_shares: 1000,
  avg_price: 250,
  market_cap: 78000,
  shares: 1000,
  value: 250000,
  percentage_weight: 15,
  percentage_share_change_from_last_q: 100,
  percentage_trade_impact: "",
  percentage_shares_outstanding: 0.75,
  three_month_percentage_change: 1,
  ytd_percentage_change: 12,
)

puts "Finished!"
