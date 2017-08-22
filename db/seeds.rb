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

investor_tepper = Investor.new({
  first_name: 'David',
  last_name: 'Tepper',
  fund_name: 'Appaloosa LP',
  portfolio_value: '$6,087 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("David Tepper")
  # photo: ""
  })
investor_tepper.remote_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/David_Tepper_01.jpg/220px-David_Tepper_01.jpg'
investor_tepper.save

investor_buffett = Investor.new({
  first_name: 'Warren',
  last_name: 'Buffett',
  fund_name: 'Berkshire Hathaway',
  portfolio_value: '$161,874 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Warren Buffett")
  # photo: ""
  })
investor_buffett.remote_photo_url = 'https://pbs.twimg.com/profile_images/3599636117/8468a03db84ec4211c3efeba18ac3925_400x400.png'
investor_buffett.save

investor_klarman = Investor.new({
  first_name: 'Seth',
  last_name: 'Klarman',
  fund_name: 'The Baupost Group',
  portfolio_value: '$8,697 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Seth Klarman")
  # photo: ""
  })
investor_klarman.remote_photo_url = 'http://investing.ibkram.com/content/2013/04/sethklarman2.jpg'
investor_klarman.save

investor_icahn = Investor.new({
  first_name: 'Carl',
  last_name: 'Icahn',
  fund_name: 'Icahn Capital Management LP',
  portfolio_value: '$19,937 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Carl Icahn")
  # photo: ""
  })
investor_icahn.remote_photo_url = 'https://specials-images.forbesimg.com/imageserve/57e5739ca7ea430a8a1a2b8f/416x416.jpg?background=000000&cropX1=113&cropX2=730&cropY1=63&cropY2=680'
investor_icahn.save

investor_gates = Investor.new({
  first_name: 'Bill',
  last_name: 'Gates',
  fund_name: 'Bill & Melinda Gates Foundation Trust',
  portfolio_value: '$161,874 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("David Tepper")
  # photo: ""
  })
investor_gates.remote_photo_url = 'https://pbs.twimg.com/profile_images/889736688624312321/xVAFH9ZH_400x400.jpg'
investor_gates.save

investor_pickens = Investor.new({
  first_name: 'T Boone',
  last_name: 'Pickens',
  fund_name: 'BP Capital Fund Advisors, LLC',
  portfolio_value: '$209 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("T Boone Pickens")
  # photo: ""
  })
investor_pickens.remote_photo_url = 'https://cdn-images-1.medium.com/fit/c/200/200/0*CaxWC1yHi4sLoWzv.jpeg'
investor_pickens.save

investor_greenberg = Investor.new({
  first_name: 'Glenn',
  last_name: 'Greenberg',
  fund_name: 'Brave Warrior Advisors, LLC',
  portfolio_value: '$2,263 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Glenn Greenberg")
  # photo: ""
  })
investor_greenberg.remote_photo_url = 'https://az712682.vo.msecnd.net/expert-pictures/140310_IGFCDJBAG_tsqr.jpg'
investor_greenberg.save

investor_pabrai = Investor.new({
  first_name: 'Mohnish',
  last_name: 'Pabrai',
  fund_name: 'Dalal Street, LLC',
  portfolio_value: '$405 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Mohnish Pabrai")
  # photo: ""
  })
investor_pabrai.remote_photo_url = 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/8/005/0af/040/0636092.jpg'
investor_pabrai.save

investor_einhorn = Investor.new({
  first_name: 'David',
  last_name: 'Einhorn',
  fund_name: 'Greenlight Capital',
  portfolio_value: '$7,195 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("David Einhorn")
  # photo: ""
  })
investor_einhorn.remote_photo_url = 'https://iialpha.euromoneycdn.com/images/1077/David%20Einhorn%20AC%20story%20page.jpg'
investor_einhorn.save

investor_loeb = Investor.new({
  first_name: 'Daniel S.',
  last_name: 'Loeb',
  fund_name: 'Third Point, LLC',
  portfolio_value: '$11,282 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Daniel S. Loeb")
  # photo: ""
  })
investor_loeb.remote_photo_url = 'http://www.thirdpoint.com/wp-content/uploads/2015/06/DanielLoeb_thumb-e1433271433273.jpg'
investor_loeb.save

investor_ackman = Investor.new({
  first_name: 'Bill',
  last_name: 'Ackman',
  fund_name: 'Pershing Square Capital Management, L.P.',
  portfolio_value: '$6,015 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("Bill Ackman")
  # avatar: ""
  })
investor_ackman.remote_photo_url = 'https://www.streetinsider.com/images/entities/37/resize_ackman.jpg'
investor_ackman.save

investor_rolfe = Investor.new({
  first_name: 'David',
  last_name: 'Rolfe',
  fund_name: 'Wedgewood Partners, Inc.',
  portfolio_value: '$3,265 Mil',
  last_update: "",
  description: GetDescriptionService.new().searcher("David Rolfe")
  # avatar: ""
  })
investor_rolfe.remote_photo_url = 'https://gurufocus.s3.amazonaws.com/conference/Daivd_Rolfe_samesize.png?3'
investor_rolfe.save


puts "Creating stocks..."


stock_ADS_current_price =  221.27
stock_ADS = Stock.create!({
  ticker: "ADS",
  company_name: "Alliance Data Systems Corp",
  sector: "Services",
  current_price: stock_ADS_current_price,
  shares_outstanding: 55.68,
  market_cap_in_millions: (12.32 * 1000),
  percentage_three_last_months_price_change: (((stock_ADS_current_price - 237.74) / 237.74) * 100),
  percentage_year_to_date_price_change: (((stock_ADS_current_price - 231.49) / 231.49) * 100)
  })

stock_AR_current_price =  18.82
stock_AR = Stock.create!({
  ticker: "AR",
  company_name: "Antero Resources Corp",
  sector: "Basic Materials",
  current_price: stock_AR_current_price,
  shares_outstanding: 315.47,
  market_cap_in_millions: (5.94 * 1000),
  percentage_three_last_months_price_change: (((stock_AR_current_price - 21.68) / 21.68) * 100),
  percentage_year_to_date_price_change: (((stock_AR_current_price - 23.68) / 23.68) * 100)
  })

stock_AXTA_current_price =  29.20
stock_AXTA = Stock.create!({
  ticker: "AXTA",
  company_name: "Axalta Coating Systems Ltd",
  sector: "Basic Materials",
  current_price: stock_AXTA_current_price,
  shares_outstanding: 243.16,
  market_cap_in_millions: (7.1 * 1000),
  percentage_three_last_months_price_change: (((stock_AXTA_current_price - 31.41 ) / 31.41  ) * 100),
  percentage_year_to_date_price_change: (((stock_AXTA_current_price - 27.65  ) / 27.65 ) * 100)
  })

stock_BAC_current_price =  23.62
stock_BAC = Stock.create!({
  ticker: "BAC",
  company_name: "Bank of America Corp",
  sector: "Financial",
  current_price: stock_BAC_current_price,
  shares_outstanding: (9.85 * 1000),
  market_cap_in_millions: (232.67 * 1000),
  percentage_three_last_months_price_change: (((stock_BAC_current_price - 22.96) / 22.96) * 100),
  percentage_year_to_date_price_change: (((stock_BAC_current_price - 22.39) / 22.39) * 100)
  })

stock_BAM_current_price =  39.13
stock_BAM = Stock.create!({
  ticker: "BAM",
  company_name: "Brookfield Asset Management Inc",
  sector: "Financial",
  current_price: stock_BAM_current_price,
  shares_outstanding: 958.56,
  market_cap_in_millions: (37.37 * 1000),
  percentage_three_last_months_price_change: (((stock_BAM_current_price - 37.72 ) / 37.72  ) * 100),
  percentage_year_to_date_price_change: (((stock_BAM_current_price - 32.84  ) / 32.84 ) * 100)
  })

stock_CMCSA_current_price =  40.52
stock_CMCSA = Stock.create!({
  ticker: "CMCSA",
  company_name: "BComcast Corp",
  sector: "Services",
  current_price: stock_CMCSA_current_price,
  shares_outstanding: (4.7 * 1000),
  market_cap_in_millions: (190.99 * 1000),
  percentage_three_last_months_price_change: (((stock_CMCSA_current_price - 39.33 ) / 39.33  ) * 100),
  percentage_year_to_date_price_change: (((stock_CMCSA_current_price - 34.24    ) / 34.24  ) * 100)
  })

stock_HCA_current_price =  77.53
stock_HCA = Stock.create!({
  ticker: "HCA",
  company_name: "HCA Healthcare, Inc",
  sector: "Healthcare",
  current_price: stock_HCA_current_price,
  shares_outstanding: 361.25,
  market_cap_in_millions: (28.01 * 1000),
  percentage_three_last_months_price_change: (((stock_HCA_current_price - 82.32  ) / 82.32   ) * 100),
  percentage_year_to_date_price_change: (((stock_HCA_current_price - 74.46    ) / 74.46  ) * 100)
  })

stock_JPM_current_price =  90.74
stock_JPM = Stock.create!({
  ticker: "JPM",
  company_name: "JPMorgan Chase & Co",
  sector: "Financial",
  current_price: stock_JPM_current_price,
  shares_outstanding: 361.25,
  market_cap_in_millions: (28.01 * 1000),
  percentage_three_last_months_price_change: (((stock_JPM_current_price - 84.24) / 84.24) * 100),
  percentage_year_to_date_price_change: (((stock_JPM_current_price - 85.78) / 85.78)* 100)
  })

stock_LBTYA_current_price =  33.40
stock_LBTYA = Stock.create!({
  ticker: "LBTYA",
  company_name: "Liberty Global plc",
  sector: "Financial",
  current_price: stock_LBTYA_current_price,
  shares_outstanding: 237.16,
  market_cap_in_millions: (33.36 * 1000),
  percentage_three_last_months_price_change: (((stock_LBTYA_current_price - 30.85 ) / 30.85  ) * 100),
  percentage_year_to_date_price_change: (((stock_LBTYA_current_price - 30.65  ) / 30.65 )* 100)
  })

stock_LBTYK_current_price =  32.39
stock_LBTYK = Stock.create!({
  ticker: "LBTYK",
  company_name: "Liberty Global plc",
  sector: "Financial",
  current_price: stock_LBTYK_current_price,
  shares_outstanding: 609.04,
  market_cap_in_millions: (33.67 * 1000),
  percentage_three_last_months_price_change: (((stock_LBTYK_current_price - 29.84) / 29.84) * 100),
  percentage_year_to_date_price_change: (((stock_LBTYK_current_price - 29.80) / 29.80)* 100)
  })

stock_PRI_current_price =  76.30
stock_PRI = Stock.create!({
  ticker: "PRI",
  company_name: "Primerica, Inc",
  sector: "Financial",
  current_price: stock_PRI_current_price,
  shares_outstanding: 45.5,
  market_cap_in_millions: (3.47 * 1000),
  percentage_three_last_months_price_change: (((stock_PRI_current_price - 77.06) / 77.06 ) * 100),
  percentage_year_to_date_price_change: (((stock_PRI_current_price - 69.45) / 69.45)* 100)
  })

stock_Q_current_price =  91.55
stock_Q = Stock.create!({
  ticker: "Q",
  company_name: "Quintiles IMS Holdings, Inc",
  sector: "Healthcare",
  current_price: stock_Q_current_price,
  shares_outstanding: 216.53,
  market_cap_in_millions: (19.82 * 1000),
  percentage_three_last_months_price_change: (((stock_Q_current_price - 83.54) / 83.54) * 100),
  percentage_year_to_date_price_change: (((stock_Q_current_price - 76.93) / 76.93)* 100)
  })

stock_SCHW_current_price =  39.51
stock_SCHW = Stock.create!({
  ticker: "SCHW",
  company_name: "The Charles Schwab Corp",
  sector: "Financial",
  current_price: stock_SCHW_current_price,
  shares_outstanding: (1.34 * 1000),
  market_cap_in_millions: (52.83 * 1000),
  percentage_three_last_months_price_change: (((stock_SCHW_current_price - 38.45 ) / 38.45) * 100),
  percentage_year_to_date_price_change: (((stock_SCHW_current_price - 39.96 ) / 39.96 )* 100)
  })

stock_ST_current_price =  43.40
stock_ST = Stock.create!({
  ticker: "ST",
  company_name: "Sensata Technologies Holding N.V.",
  sector: "Technology",
  current_price: stock_ST_current_price,
  shares_outstanding: 171.23,
  market_cap_in_millions: (7.43 * 1000),
  percentage_three_last_months_price_change: (((stock_ST_current_price - 40.57) / 40.57) * 100),
  percentage_year_to_date_price_change: (((stock_ST_current_price - 39.78 ) / 39.78 )* 100)
  })

stock_SERV_current_price =  44.60
stock_SERV = Stock.create!({
  ticker: "SERV",
  company_name: "ServiceMaster Global Holdings, Inc",
  sector: "Services",
  current_price: stock_SERV_current_price,
  shares_outstanding: 133.44,
  market_cap_in_millions: (5.95 * 1000),
  percentage_three_last_months_price_change: (((stock_SERV_current_price - 37.16) / 37.16) * 100),
  percentage_year_to_date_price_change: (((stock_SERV_current_price - 37.68) / 37.68)* 100)
  })

stock_TDW_current_price =  24.15
stock_TDW = Stock.create!({
  ticker: "TDW",
  company_name: "Tidewater Inc",
  sector: "Basic Materials",
  current_price: stock_TDW_current_price,
  shares_outstanding: 30,
  market_cap_in_millions: 724.5,
  percentage_three_last_months_price_change: (((stock_TDW_current_price - 24.19) / 24.19) * 100),
  percentage_year_to_date_price_change: (((stock_TDW_current_price - 116.45) / 116.45)* 100)
  })


stock_agn = Stock.create!({ ticker: "AGN", company_name: "Allergan plc", sector: "Healthcare", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

stock_goog = Stock.create!({ ticker: "GOOG", company_name: "Alphabet Inc.", sector: "Technology", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

stock_baba = Stock.create!({ ticker: "BABA", company_name: "Alibaba Group Holding Limited", sector: "Services", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_fb = Stock.create!({ ticker: "FB", company_name: "Facebook Inc", sector: "Technology", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

# stock_mu = Stock.create!({ ticker: "MU", company_name: "Micron Technology Inc", sector: "Technology", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_etp = Stock.create!({ ticker: "ETP", company_name: "Energy Transfer Partners LP", sector: "Energy", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_aapl = Stock.create!({ ticker: "AAPL", company_name: "Apple Inc", sector: "Technology", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

# stock_gm = Stock.create!({ ticker: "GM", company_name: "General Motors Co.", sector: "Consumer Cyclical", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_brk = Stock.create!({ ticker: "BRK.B", company_name: "Berkshire Hathaway Inc", sector: "Insurance", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_lng = Stock.create!({ ticker: "LNG", company_name: "Cheniere Energy Inc", sector: "Energy", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })


puts "Creating investor stocks..."

shares_total_count_ADS = 938698
stock_greenberg_ADS = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_ADS,
  shares_total_count: shares_total_count_ADS,
  latest_quarter_shares_total_value: 240954,
  percentage_shares_outstanding: shares_total_count_ADS.fdiv(stock_ADS.shares_outstanding * 1000000) * 100
  )

shares_total_count_AR = 11459921
stock_greenberg_AR = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_AR,
  shares_total_count: shares_total_count_AR,
  latest_quarter_shares_total_value: 247649,
  percentage_shares_outstanding: shares_total_count_AR.fdiv(stock_AR.shares_outstanding * 1000000) * 100
  )

shares_total_count_AXTA = 3859691
stock_greenberg_AXTA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_AXTA,
  shares_total_count: shares_total_count_AXTA,
  latest_quarter_shares_total_value: 123664,
  percentage_shares_outstanding: shares_total_count_AXTA.fdiv(stock_AXTA.shares_outstanding * 1000000) * 100
  )

shares_total_count_BAC = 14532
stock_greenberg_BAC = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_BAC,
  shares_total_count: shares_total_count_BAC,
  latest_quarter_shares_total_value: 353,
  percentage_shares_outstanding: shares_total_count_BAC.fdiv(stock_BAC.shares_outstanding * 1000000) * 100
  )

shares_total_count_BAM = 4690948
stock_greenberg_BAM = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_BAM,
  shares_total_count: shares_total_count_BAM,
  latest_quarter_shares_total_value: 183932,
  percentage_shares_outstanding: shares_total_count_BAM.fdiv(stock_BAM.shares_outstanding * 1000000) * 100
  )

shares_total_count_CMCSA = 32194
stock_greenberg_CMCSA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_CMCSA,
  shares_total_count: shares_total_count_CMCSA,
  latest_quarter_shares_total_value: 1253,
  percentage_shares_outstanding: shares_total_count_CMCSA.fdiv(stock_CMCSA.shares_outstanding * 1000000) * 100
  )

shares_total_count_HCA = 3080347
stock_greenberg_HCA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_HCA,
  shares_total_count: shares_total_count_HCA,
  latest_quarter_shares_total_value: 268606,
  percentage_shares_outstanding: shares_total_count_HCA.fdiv(stock_HCA.shares_outstanding * 1000000) * 100
  )

shares_total_count_JPM = 1677185
stock_greenberg_JPM = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_JPM,
  shares_total_count: shares_total_count_JPM,
  latest_quarter_shares_total_value: 153295,
  percentage_shares_outstanding: shares_total_count_JPM.fdiv(stock_JPM.shares_outstanding * 1000000) * 100
  )

shares_total_count_LBTYA = 266868
stock_greenberg_LBTYA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_LBTYA,
  shares_total_count: shares_total_count_LBTYA,
  latest_quarter_shares_total_value: 8572,
  percentage_shares_outstanding: shares_total_count_LBTYA.fdiv(stock_LBTYA.shares_outstanding * 1000000) * 100
  )

shares_total_count_LBTYK = 6738614
stock_greenberg_LBTYK = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_LBTYK,
  shares_total_count: shares_total_count_LBTYK,
  latest_quarter_shares_total_value: 210110,
  percentage_shares_outstanding: shares_total_count_LBTYK.fdiv(stock_LBTYK.shares_outstanding * 1000000) * 100
  )

shares_total_count_PRI = 1518440
stock_greenberg_PRI = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_PRI,
  shares_total_count: shares_total_count_PRI,
  latest_quarter_shares_total_value: 115022,
  percentage_shares_outstanding: shares_total_count_PRI.fdiv(stock_PRI.shares_outstanding * 1000000) * 100
  )

shares_total_count_Q = 1581553
stock_greenberg_Q = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_Q,
  shares_total_count: shares_total_count_Q,
  latest_quarter_shares_total_value: 141549,
  percentage_shares_outstanding: shares_total_count_Q.fdiv(stock_Q.shares_outstanding * 1000000) * 100
  )

shares_total_count_SCHW = 7302503
stock_greenberg_SCHW = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_SCHW,
  shares_total_count: shares_total_count_SCHW,
  latest_quarter_shares_total_value: 313716,
  percentage_shares_outstanding: shares_total_count_SCHW.fdiv(stock_SCHW.shares_outstanding * 1000000) * 100
  )

shares_total_count_ST = 2910230
stock_greenberg_ST = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_ST,
  shares_total_count: shares_total_count_ST,
  latest_quarter_shares_total_value: 124325,
  percentage_shares_outstanding: shares_total_count_ST.fdiv(stock_ST.shares_outstanding * 1000000) * 100
  )

shares_total_count_SERV = 1923916
stock_greenberg_SERV = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_SERV,
  shares_total_count: shares_total_count_SERV,
  latest_quarter_shares_total_value: 75398,
  percentage_shares_outstanding: shares_total_count_SERV.fdiv(stock_SERV.shares_outstanding * 1000000) * 100
  )

shares_total_count_TDW = 19625
stock_greenberg_TDW = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_TDW,
  shares_total_count: shares_total_count_TDW,
  latest_quarter_shares_total_value: 14,
  percentage_shares_outstanding: shares_total_count_TDW.fdiv(stock_TDW.shares_outstanding * 1000000) * 100
)


total_value_for_all_greenberg_stocks = investor_greenberg.investor_stocks.reduce(0) {|sum, investor_stock| sum + investor_stock.latest_quarter_shares_total_value }

stock_greenberg_ADS.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_ADS.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_AR.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_AR.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_AXTA.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_AXTA.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_BAC.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_BAC.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_BAM.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_BAM.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_CMCSA.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_CMCSA.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_HCA.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_HCA.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_JPM.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_JPM.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_LBTYA.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_LBTYA.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_LBTYK.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_LBTYK.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_PRI.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_PRI.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_Q.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_Q.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_SCHW.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_SCHW.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_ST.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_ST.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_SERV.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_SERV.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)

stock_greenberg_TDW.update(percentage_weight_compared_to_portfolio_total_value: stock_greenberg_TDW.latest_quarter_shares_total_value.fdiv(total_value_for_all_greenberg_stocks) * 100)



stock_tepper_agn = InvestorStock.create!(investor: investor_tepper, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_tepper_goog = InvestorStock.create!(investor: investor_tepper, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

stock_tepper_baba = InvestorStock.create!(investor: investor_tepper, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_fb = InvestorStock.create!(investor: investor_tepper, stock: stock_fb, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_mu = InvestorStock.create!(investor: investor_tepper, stock: stock_mu, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_etp = InvestorStock.create!(investor: investor_tepper, stock: stock_etp, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_lng = InvestorStock.create!(investor: investor_tepper, stock: stock_lng, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_brk = InvestorStock.create!(investor: investor_tepper, stock: stock_brk, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_gm = InvestorStock.create!(investor: investor_tepper, stock: stock_gm, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_tepper_aapl = InvestorStock.create!(investor: investor_tepper, stock: stock_aapl, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_buffett_agn = InvestorStock.create!(investor: investor_buffett, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_buffett_goog = InvestorStock.create!(investor: investor_buffett, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_buffett_baba = InvestorStock.create!(investor: investor_buffett, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_gates_agn = InvestorStock.create!(investor: investor_gates, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_gates_goog = InvestorStock.create!(investor: investor_gates, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_gates_baba = InvestorStock.create!(investor: investor_gates, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_klarman_agn = InvestorStock.create!(investor: investor_klarman, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_klarman_goog = InvestorStock.create!(investor: investor_klarman, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_klarman_baba = InvestorStock.create!(investor: investor_klarman, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_einhorn_agn = InvestorStock.create!(investor: investor_einhorn, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_einhorn_goog = InvestorStock.create!(investor: investor_einhorn, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_einhorn_baba = InvestorStock.create!(investor: investor_einhorn, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_loeb_agn = InvestorStock.create!(investor: investor_loeb, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_loeb_goog = InvestorStock.create!(investor: investor_loeb, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_loeb_baba = InvestorStock.create!(investor: investor_loeb, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)


# stock_icahn_agn = InvestorStock.create!(investor: investor_icahn, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_icahn_goog = InvestorStock.create!(investor: investor_icahn, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_icahn_baba = InvestorStock.create!(investor: investor_icahn, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_rolfe_agn = InvestorStock.create!(investor: investor_rolfe, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_rolfe_goog = InvestorStock.create!(investor: investor_rolfe, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_rolfe_baba = InvestorStock.create!(investor: investor_rolfe, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_ackman_agn = InvestorStock.create!(investor: investor_ackman, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_ackman_goog = InvestorStock.create!(investor: investor_ackman, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_ackman_baba = InvestorStock.create!(investor: investor_ackman, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pabrai_agn = InvestorStock.create!(investor: investor_pabrai, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pabrai_goog = InvestorStock.create!(investor: investor_pabrai, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pabrai_baba = InvestorStock.create!(investor: investor_pabrai, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pickens_agn = InvestorStock.create!(investor: investor_pickens, stock: stock_agn, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pickens_goog = InvestorStock.create!(investor: investor_pickens, stock: stock_goog, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

# stock_pickens_baba = InvestorStock.create!(investor: investor_pickens, stock: stock_baba, shares_total_count: 2500000, latest_quarter_shares_total_value: 610063, percentage_weight_compared_to_portfolio_total_value: 15, percentage_shares_outstanding: 1)

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
