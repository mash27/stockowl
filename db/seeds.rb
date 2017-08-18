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
  # photo: 'https://avatars0.githubusercontent.com/u/29701748?v=4',
  password: '123456'})

user_sandi = User.create!({ username: 'Sandi', email: 'shopelite510@gmail.com',
  # photo: "https://avatars0.githubusercontent.com/u/26726874?v=3",
  password: '123456'})

user_ruby = User.create!({ username: 'Ruby', email: 'rubyk70231@gmail.com',
  # photo: 'https://avatars3.githubusercontent.com/u/29701859?v=3',
  password: '123456'})


puts "Creating investors..."

investor_tepper = Investor.new({ first_name: 'David', last_name: 'Tepper', fund_name: 'Appaloosa LP', portfolio_value: '$6,087 Mil', last_update: "",
  # photo: ""
  })
investor_tepper.remote_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/David_Tepper_01.jpg/220px-David_Tepper_01.jpg'
investor_tepper.save

investor_buffett = Investor.new({ first_name: 'Warren', last_name: 'Buffet', fund_name: 'Berkshire Hathaway', portfolio_value: '$161,874 Mil', last_update: "",
  # photo: ""
  })
investor_buffett.remote_photo_url = 'https://pbs.twimg.com/profile_images/3599636117/8468a03db84ec4211c3efeba18ac3925_400x400.png'
investor_buffett.save

investor_klarman = Investor.new({ first_name: 'Seth', last_name: 'Klarman', fund_name: 'The Baupost Group', portfolio_value: '$8,697 Mil', last_update: "",
  # photo: ""
  })
investor_klarman.remote_photo_url = 'http://investing.ibkram.com/content/2013/04/sethklarman2.jpg'
investor_klarman.save

investor_icahn = Investor.new({ first_name: 'Carl', last_name: 'Icahn', fund_name: 'Icahn Capital Management LP', portfolio_value: '$19,937 Mil', last_update: "",
  # photo: ""
  })
investor_icahn.remote_photo_url = 'https://specials-images.forbesimg.com/imageserve/57e5739ca7ea430a8a1a2b8f/416x416.jpg?background=000000&cropX1=113&cropX2=730&cropY1=63&cropY2=680'
investor_icahn.save

investor_gates = Investor.new({ first_name: 'Bill', last_name: 'Gates', fund_name: 'Bill & Melinda Gates Foundation Trust', portfolio_value: '$161,874 Mil', last_update: "",
  # photo: ""
  })
investor_gates.remote_photo_url = 'https://pbs.twimg.com/profile_images/889736688624312321/xVAFH9ZH_400x400.jpg'
investor_gates.save

investor_pickens = Investor.new({ first_name: 'T Boone', last_name: 'Pickens', fund_name: 'BP Capital Fund Advisors, LLC', portfolio_value: '$209 Mil', last_update: "",
  # photo: ""
  })
investor_pickens.remote_photo_url = 'http://abcnews.go.com/images/US/gty_t_boone_pickens_lpl_130130_mn.jpg'
investor_pickens.save

investor_greenberg = Investor.new({ first_name: 'Glenn', last_name: 'Greenberg', fund_name: 'Brave Warrior Advisors, LLC', portfolio_value: '$2,263 Mil', last_update: "",
  # photo: ""
  })
investor_greenberg.remote_photo_url = 'https://az712682.vo.msecnd.net/expert-pictures/140310_IGFCDJBAG_tsqr.jpg'
investor_greenberg.save

investor_pabrai = Investor.new({ first_name: 'Mohnish', last_name: 'Pabrai', fund_name: 'Dalal Street, LLC', portfolio_value: '$405 Mil', last_update: "",
  # photo: ""
  })
investor_pabrai.remote_photo_url = 'http://img.timeinc.net/time/daily/2012/1201/360_mohnish_pabrai_0110.jpg'
investor_pabrai.save

investor_einhorn = Investor.new({ first_name: 'David', last_name: 'Einhorn', fund_name: 'Greenlight Capital', portfolio_value: '$7,195 Mil', last_update: "",
  # photo: ""
  })
investor_einhorn.remote_photo_url = 'https://iialpha.euromoneycdn.com/images/1077/David%20Einhorn%20AC%20story%20page.jpg'
investor_einhorn.save

investor_loeb = Investor.new({ first_name: 'Dan', last_name: 'Loeb', fund_name: 'Third Point, LLC', portfolio_value: '$11,282 Mil', last_update: "",
  # photo: ""
  })
investor_loeb.remote_photo_url = 'http://www.thirdpoint.com/wp-content/uploads/2015/06/DanielLoeb_thumb-e1433271433273.jpg'
investor_loeb.save

investor_ackman = Investor.new({ first_name: 'Bill', last_name: 'Ackman', fund_name: 'Pershing Square Capital Management, L.P.', portfolio_value: '$6,015 Mil', last_update: "",
  # avatar: ""
  })
investor_ackman.remote_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/1/1a/Billackmansletterabouttheanalystwholefthisfundisincrediblyclassy.jpg'
investor_ackman.save

investor_rolfe = Investor.new({ first_name: 'David', last_name: 'Rolfe', fund_name: 'Wedgewood Partners, Inc.', portfolio_value: '$3,265 Mil', last_update: "",
  # avatar: ""
  })
investor_rolfe.remote_photo_url = 'https://static.seekingalpha.com/uploads/2017/1/14/saupload_DavidRolfe_Wedgewood.jpg'
investor_rolfe.save


puts "Creating stocks..."

stock_agn = Stock.create!({ ticker: "AGN", company_name: "Allergan plc", sector: "Healthcare", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

stock_goog = Stock.create!({ ticker: "GOOG", company_name: "Alphabet Inc.", sector: "Technology", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

stock_baba = Stock.create!({ ticker: "BABA", company_name: "Alibaba Group Holding Limited", sector: "Services", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })


puts "Creating investor stocks..."

stock_tepper_agn = InvestorStock.create!(investor: investor_tepper, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_tepper_goog = InvestorStock.create!(investor: investor_tepper, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_tepper_baba = InvestorStock.create!(investor: investor_tepper, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_buffett_agn = InvestorStock.create!(investor: investor_buffett, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_buffett_goog = InvestorStock.create!(investor: investor_buffett, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_buffett_baba = InvestorStock.create!(investor: investor_buffett, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_gates_agn = InvestorStock.create!(investor: investor_gates, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_gates_goog = InvestorStock.create!(investor: investor_gates, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_gates_baba = InvestorStock.create!(investor: investor_gates, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_klarman_agn = InvestorStock.create!(investor: investor_klarman, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_klarman_goog = InvestorStock.create!(investor: investor_klarman, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_klarman_baba = InvestorStock.create!(investor: investor_klarman, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_einhorn_agn = InvestorStock.create!(investor: investor_einhorn, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_einhorn_goog = InvestorStock.create!(investor: investor_einhorn, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_einhorn_baba = InvestorStock.create!(investor: investor_einhorn, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_loeb_agn = InvestorStock.create!(investor: investor_loeb, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_loeb_goog = InvestorStock.create!(investor: investor_loeb, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_loeb_baba = InvestorStock.create!(investor: investor_loeb, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_greenberg_agn = InvestorStock.create!(investor: investor_greenberg, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_greenberg_goog = InvestorStock.create!(investor: investor_greenberg, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_greenberg_baba = InvestorStock.create!(investor: investor_greenberg, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_icahn_agn = InvestorStock.create!(investor: investor_icahn, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_icahn_goog = InvestorStock.create!(investor: investor_icahn, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_icahn_baba = InvestorStock.create!(investor: investor_icahn, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_rolfe_agn = InvestorStock.create!(investor: investor_rolfe, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_rolfe_goog = InvestorStock.create!(investor: investor_rolfe, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_rolfe_baba = InvestorStock.create!(investor: investor_rolfe, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_ackman_agn = InvestorStock.create!(investor: investor_ackman, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_ackman_goog = InvestorStock.create!(investor: investor_ackman, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_ackman_baba = InvestorStock.create!(investor: investor_ackman, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pabrai_agn = InvestorStock.create!(investor: investor_pabrai, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pabrai_goog = InvestorStock.create!(investor: investor_pabrai, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pabrai_baba = InvestorStock.create!(investor: investor_pabrai, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pickens_agn = InvestorStock.create!(investor: investor_pickens, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pickens_goog = InvestorStock.create!(investor: investor_pickens, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_pickens_baba = InvestorStock.create!(investor: investor_pickens, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

puts "Creating investor stock quarters..."

4.times do |index|
InvestorStockQuarter.create!(
  investor_stock: stock_tepper_agn,
  designation: "2015Q#{index + 1}",
  traded_shares_count: 1000,
  shares_count_at_the_end: 1500,
  percentage_change_in_owned_shares_from_last_quarter: 50,
  stock_average_price: 215
  )

InvestorStockQuarter.create!(
  investor_stock: stock_tepper_goog,
  designation: "2015Q#{index + 1}",
  traded_shares_count: 1000,
  shares_count_at_the_end: 1500,
  percentage_change_in_owned_shares_from_last_quarter: 50,
  stock_average_price: 215
  )

InvestorStockQuarter.create!(
  investor_stock: stock_tepper_baba,
  designation: "2015Q#{index + 1}",
  traded_shares_count: 1000,
  shares_count_at_the_end: 1500,
  percentage_change_in_owned_shares_from_last_quarter: 50,
  stock_average_price: 215
  )
end

puts "Finished!"
