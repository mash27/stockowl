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

user_ash = User.create!({ username: 'Ash', first_name: 'Ash', last_name: 'M.', email: 'a.madi27@gmail.com',
  photo: 'https://avatars0.githubusercontent.com/u/29701748?v=4',
  password: '123456'})

user_sandi = User.create!({ username: 'Sandi', first_name: 'Sandi', last_name: 'Huynh', email: 'shopelite510@gmail.com',
  photo: "https://avatars0.githubusercontent.com/u/26726874?v=3",
  password: '123456'})

user_ruby = User.create!({ username: 'Ruby', first_name: 'Ruby', last_name: 'Kim', email: 'rubyk70231@gmail.com',
  photo: 'https://avatars3.githubusercontent.com/u/29701859?v=3',
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
  description: GetDescriptionService.new().searcher("Bill Gates")
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


puts "Creating Greenberg stocks..."


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
  company_name: "Comcast Corp",
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

stock_T_current_price =  37.98
stock_T = Stock.create!({
  ticker: "T",
  company_name: "AT&T Inc",
  sector: "Technology",
  current_price: stock_T_current_price,
  shares_outstanding: (6.14 * 1000),
  market_cap_in_millions: (233.2 * 1000),
  percentage_three_last_months_price_change: (((stock_T_current_price - 37.82) / 37.82) * 100),
  percentage_year_to_date_price_change: (((stock_T_current_price - 41.48) / 41.48)* 100)
  })

stock_CMPR_current_price =  90.74
stock_CMPR = Stock.create!({
  ticker: "CMPR",
  company_name: "Cimpress N.V.",
  sector: "Services",
  current_price: stock_CMPR_current_price,
  shares_outstanding: 31.3,
  market_cap_in_millions: (2.84 * 1000),
  percentage_three_last_months_price_change: (((stock_CMPR_current_price - 89.78) / 89.78) * 100),
  percentage_year_to_date_price_change: (((stock_CMPR_current_price - 93.31) / 93.31)* 100)
  })

stock_ESRX_current_price =  61.62
stock_ESRX = Stock.create!({
  ticker: "ESRX",
  company_name: "Express Scripts Holding Co",
  sector: "Healthcare",
  current_price: stock_ESRX_current_price,
  shares_outstanding: 577.55,
  market_cap_in_millions: (35.59 * 1000),
  percentage_three_last_months_price_change: (((stock_ESRX_current_price - 60.15) / 60.15) * 100),
  percentage_year_to_date_price_change: (((stock_ESRX_current_price - 69.40) / 69.40)* 100)
  })

puts "Creating Tepper stocks..."

stock_AGN_current_price =  223.75
stock_AGN = Stock.create!({
  ticker: "AGN",
  company_name: "Allergan plc",
  sector: "Healthcare",
  current_price: stock_AGN_current_price,
  shares_outstanding: 334.31,
  market_cap_in_millions: (74.8 * 1000),
  percentage_three_last_months_price_change: (((stock_AGN_current_price - 219.99) / 219.99) * 100),
  percentage_year_to_date_price_change: (((stock_AGN_current_price - 214.27) / 214.27)* 100)
  })

stock_GOOG_current_price =  924.69
stock_GOOG = Stock.create!({
  ticker: "GOOG",
  company_name: "Alphabet Inc",
  sector: "Technology",
  current_price: stock_GOOG_current_price,
  shares_outstanding: 347.73,
  market_cap_in_millions: (645.02 * 1000),
  percentage_three_last_months_price_change: (((stock_GOOG_current_price - 948.82) / 948.82) * 100),
  percentage_year_to_date_price_change: (((stock_GOOG_current_price - 786.14) / 786.14)* 100)
  })

stock_BABA_current_price =  174.46
stock_BABA = Stock.create!({
  ticker: "BABA",
  company_name: "Alibaba Group Holding Limited",
  sector: "Healthcare",
  current_price: stock_BABA_current_price,
  shares_outstanding: 2529.36,
  market_cap_in_millions: (441.27 * 1000),
  percentage_three_last_months_price_change: (((stock_BABA_current_price - 122.93) / 122.93) * 100),
  percentage_year_to_date_price_change: (((stock_BABA_current_price - 88.60) / 88.60)* 100)
  })

stock_MU_current_price =  30.45
stock_MU = Stock.create!({
  ticker: "MU",
  company_name: "Micron Technology, Inc",
  sector: "Technology",
  current_price: stock_MU_current_price,
  shares_outstanding: (1.11 * 1000),
  market_cap_in_millions: (33.8 * 1000),
  percentage_three_last_months_price_change: (((stock_MU_current_price - 28.29) / 28.29) * 100),
  percentage_year_to_date_price_change: (((stock_MU_current_price - 22.55) / 22.55)* 100)
  })

stock_WPZ_current_price = 38.20
stock_WPZ = Stock.create!({
  ticker: "WPZ",
  company_name: "Williams Partners L.P",
  sector: "Basic Materials",
  current_price: stock_WPZ_current_price,
  shares_outstanding: 955.81,
  market_cap_in_millions: (37.17 * 1000),
  percentage_three_last_months_price_change: (((stock_WPZ_current_price - 40.03) / 40.03) * 100),
  percentage_year_to_date_price_change: (((stock_WPZ_current_price - 36.49) / 36.49)* 100)
  })

puts "Creating Buffett stocks..."

stock_KHC_current_price =  85.05
stock_KHC = Stock.create!({
  ticker: "KHC",
  company_name: "The Kraft Heinz Company",
  sector: "Consumer Goods",
  current_price: stock_KHC_current_price,
  shares_outstanding: (1.22 * 1000),
  market_cap_in_millions: (103.61 * 1000),
  percentage_three_last_months_price_change: (((stock_KHC_current_price - 91.21) / 91.21) * 100),
  percentage_year_to_date_price_change: (((stock_KHC_current_price - 85.75) / 85.75)* 100)
  })

stock_WFC_current_price =  52.22
stock_WFC = Stock.create!({
  ticker: "WFC",
  company_name: "Wells Fargo & Company",
  sector: "Financial",
  current_price: stock_WFC_current_price,
  shares_outstanding: (4.96 * 1000),
  market_cap_in_millions: (259.22 * 1000),
  percentage_three_last_months_price_change: (((stock_WFC_current_price - 53.00) / 53.00) * 100),
  percentage_year_to_date_price_change: (((stock_WFC_current_price - 54.84) / 54.84)* 100)
  })

stock_AAPL_current_price =  159.78
stock_AAPL = Stock.create!({
  ticker: "AAPL",
  company_name: "Apple Inc",
  sector: "Consumer Goods",
  current_price: stock_AAPL_current_price,
  shares_outstanding: (5.17 * 1000),
  market_cap_in_millions: (825.3 * 1000),
  percentage_three_last_months_price_change: (((stock_AAPL_current_price - 153.20) / 153.20) * 100),
  percentage_year_to_date_price_change: (((stock_AAPL_current_price - 114.72) / 114.72)* 100)
  })

stock_KO_current_price =  45.60
stock_KO = Stock.create!({
  ticker: "KO",
  company_name: "The Coca-Cola Company",
  sector: "Consumer Goods",
  current_price: stock_KO_current_price,
  shares_outstanding: (4.27 * 1000),
  market_cap_in_millions: (194.5 * 1000),
  percentage_three_last_months_price_change: (((stock_KO_current_price - 44.03) / 44.03) * 100),
  percentage_year_to_date_price_change: (((stock_KO_current_price - 41.10) / 41.10)* 100)
  })

stock_AXP_current_price = 85.30
stock_AXP = Stock.create!({
  ticker: "AXP",
  company_name: "American Express Company",
  sector: "Financial",
  current_price: stock_AXP_current_price,
  shares_outstanding: 883.98,
  market_cap_in_millions: (75.4 * 1000),
  percentage_three_last_months_price_change: (((stock_AXP_current_price - 76.91) / 76.91) * 100),
  percentage_year_to_date_price_change: (((stock_AXP_current_price - 74.44) / 74.44)* 100)
  })


# stock_agn = Stock.create!({ ticker: "AGN", company_name: "Allergan plc", sector: "Healthcare", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

# stock_goog = Stock.create!({ ticker: "GOOG", company_name: "Alphabet Inc.", sector: "Technology", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_baba = Stock.create!({ ticker: "BABA", company_name: "Alibaba Group Holding Limited", sector: "Services", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_fb = Stock.create!({ ticker: "FB", company_name: "Facebook Inc", sector: "Technology", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

# stock_mu = Stock.create!({ ticker: "MU", company_name: "Micron Technology Inc", sector: "Technology", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_etp = Stock.create!({ ticker: "ETP", company_name: "Energy Transfer Partners LP", sector: "Energy", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_aapl = Stock.create!({ ticker: "AAPL", company_name: "Apple Inc", sector: "Technology", current_price: 232, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20})

# stock_gm = Stock.create!({ ticker: "GM", company_name: "General Motors Co.", sector: "Consumer Cyclical", current_price: 920, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_brk = Stock.create!({ ticker: "BRK.B", company_name: "Berkshire Hathaway Inc", sector: "Insurance", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })

# stock_lng = Stock.create!({ ticker: "LNG", company_name: "Cheniere Energy Inc", sector: "Energy", current_price: 155, shares_outstanding: 335.87, market_cap_in_millions: 75493, percentage_three_last_months_price_change: 10, percentage_year_to_date_price_change: 20 })


puts "Creating Greenberg investor stocks and holding history..."

shares_total_count_ADS = 938698
stock_greenberg_ADS = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_ADS,
  shares_total_count: shares_total_count_ADS,
  latest_quarter_shares_total_value: 240954,
  percentage_shares_outstanding: shares_total_count_ADS.fdiv(stock_ADS.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 938698
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ADS,
    designation: "2017Q2",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 256.12
    )

shares_total_count_AR = 11459921
stock_greenberg_AR = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_AR,
  shares_total_count: shares_total_count_AR,
  latest_quarter_shares_total_value: 247649,
  percentage_shares_outstanding: shares_total_count_AR.fdiv(stock_AR.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 9647226
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AR,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 25.56
    )

previous_shares_count = shares_count
shares_count = 10593829
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AR,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 21.28
    )

previous_shares_count = shares_count
shares_count = 11459921
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AR,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 18.61
    )

shares_total_count_AXTA = 3859691
stock_greenberg_AXTA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_AXTA,
  shares_total_count: shares_total_count_AXTA,
  latest_quarter_shares_total_value: 123664,
  percentage_shares_outstanding: shares_total_count_AXTA.fdiv(stock_AXTA.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 4443376
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AXTA,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 29.66
    )

previous_shares_count = shares_count
shares_count = 4400048
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AXTA,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 31.29
    )

previous_shares_count = shares_count
shares_count = 3859691
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_AXTA,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 29.04
    )

shares_total_count_BAC = 14532
stock_greenberg_BAC = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_BAC,
  shares_total_count: shares_total_count_BAC,
  latest_quarter_shares_total_value: 353,
  percentage_shares_outstanding: shares_total_count_BAC.fdiv(stock_BAC.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 14532
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAC,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 25.56
    )

previous_shares_count = shares_count
shares_count = 14532
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAC,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 21.28
    )

previous_shares_count = shares_count
shares_count = 14532
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAC,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 21.28
    )

shares_total_count_BAM = 4690948
stock_greenberg_BAM = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_BAM,
  shares_total_count: shares_total_count_BAM,
  latest_quarter_shares_total_value: 183932,
  percentage_shares_outstanding: shares_total_count_BAM.fdiv(stock_BAM.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 6683668
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAM,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 36.39
    )

previous_shares_count = shares_count
shares_count = 6636977
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAM,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 38.43
    )

previous_shares_count = shares_count
shares_count = 4690948
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_BAM,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 38.84
    )

shares_total_count_CMCSA = 32194
stock_greenberg_CMCSA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_CMCSA,
  shares_total_count: shares_total_count_CMCSA,
  latest_quarter_shares_total_value: 1253,
  percentage_shares_outstanding: shares_total_count_CMCSA.fdiv(stock_CMCSA.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 16097
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_CMCSA,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 37.73
    )

previous_shares_count = shares_count
shares_count = 32194
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_CMCSA,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 38.81
    )

previous_shares_count = shares_count
shares_count = 32194
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_CMCSA,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 41.90
    )

shares_total_count_HCA = 3080347
stock_greenberg_HCA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_HCA,
  shares_total_count: shares_total_count_HCA,
  latest_quarter_shares_total_value: 268606,
  percentage_shares_outstanding: shares_total_count_HCA.fdiv(stock_HCA.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 3617751
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_HCA,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 83.71
    )

previous_shares_count = shares_count
shares_count = 3097983
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_HCA,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 83.82
    )

previous_shares_count = shares_count
shares_count = 3080347
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_HCA,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 79.52
    )

shares_total_count_JPM = 1677185
stock_greenberg_JPM = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_JPM,
  shares_total_count: shares_total_count_JPM,
  latest_quarter_shares_total_value: 153295,
  percentage_shares_outstanding: shares_total_count_JPM.fdiv(stock_JPM.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 2560143
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_JPM,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 83.71
    )

previous_shares_count = shares_count
shares_count = 1692041
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_JPM,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 83.82
    )

previous_shares_count = shares_count
shares_count = 1677185
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_JPM,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 79.52
    )

shares_total_count_LBTYA = 266868
stock_greenberg_LBTYA = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_LBTYA,
  shares_total_count: shares_total_count_LBTYA,
  latest_quarter_shares_total_value: 8572,
  percentage_shares_outstanding: shares_total_count_LBTYA.fdiv(stock_LBTYA.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 1157104
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYA,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 35.51
    )

previous_shares_count = shares_count
shares_count = 1101199
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYA,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 30.02
    )

previous_shares_count = shares_count
shares_count = 266868
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYA,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 34.51
    )

shares_total_count_LBTYK = 6738614
stock_greenberg_LBTYK = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_LBTYK,
  shares_total_count: shares_total_count_LBTYK,
  latest_quarter_shares_total_value: 210110,
  percentage_shares_outstanding: shares_total_count_LBTYK.fdiv(stock_LBTYK.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 6761270
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYK,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 34.28
    )

previous_shares_count = shares_count
shares_count = 6733386
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYK,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 29.49
    )

previous_shares_count = shares_count
shares_count = 6738614
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_LBTYK,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 33.51
    )

shares_total_count_PRI = 1518440
stock_greenberg_PRI = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_PRI,
  shares_total_count: shares_total_count_PRI,
  latest_quarter_shares_total_value: 115022,
  percentage_shares_outstanding: shares_total_count_PRI.fdiv(stock_PRI.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 1608035
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_PRI,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 79.72
    )

previous_shares_count = shares_count
shares_count = 1559965
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_PRI,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 78.02
    )

previous_shares_count = shares_count
shares_count = 1518440
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_PRI,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 81.55
    )

shares_total_count_Q = 1581553
stock_greenberg_Q = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_Q,
  shares_total_count: shares_total_count_Q,
  latest_quarter_shares_total_value: 141549,
  percentage_shares_outstanding: shares_total_count_Q.fdiv(stock_Q.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 1581553
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_Q,
    designation: "2017Q2",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 89.50
    )

shares_total_count_SCHW = 7302503
stock_greenberg_SCHW = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_SCHW,
  shares_total_count: shares_total_count_SCHW,
  latest_quarter_shares_total_value: 313716,
  percentage_shares_outstanding: shares_total_count_SCHW.fdiv(stock_SCHW.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 8204928
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_SCHW,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 41.10
    )

previous_shares_count = shares_count
shares_count = 7651850
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_SCHW,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 40.46
    )

previous_shares_count = shares_count
shares_count = 7302503
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_SCHW,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 41.12
    )

shares_total_count_ST = 2910230
stock_greenberg_ST = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_ST,
  shares_total_count: shares_total_count_ST,
  latest_quarter_shares_total_value: 124325,
  percentage_shares_outstanding: shares_total_count_ST.fdiv(stock_ST.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 2973093
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ST,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 42.01
    )

previous_shares_count = shares_count
shares_count = 2947474
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ST,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 39.74
    )

previous_shares_count = shares_count
shares_count = 2910230
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ST,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 44.49
    )

shares_total_count_SERV = 1923916
stock_greenberg_SERV = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_SERV,
  shares_total_count: shares_total_count_SERV,
  latest_quarter_shares_total_value: 75398,
  percentage_shares_outstanding: shares_total_count_SERV.fdiv(stock_SERV.shares_outstanding * 1000000) * 100
  )

previous_shares_count = 0
shares_count = 1923916
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_SERV,
    designation: "2017Q2",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 39.19
    )

shares_total_count_TDW = 19625
stock_greenberg_TDW = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_TDW,
  shares_total_count: shares_total_count_TDW,
  latest_quarter_shares_total_value: 14,
  percentage_shares_outstanding: shares_total_count_TDW.fdiv(stock_TDW.shares_outstanding * 1000000) * 100
)

previous_shares_count = 0
shares_count = 19625
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_TDW,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 45.16
    )

previous_shares_count = shares_count
shares_count = 19625
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_TDW,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 22.58
    )

previous_shares_count = shares_count
shares_count = 19625
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_TDW,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 23.83
    )

shares_total_count_T = 0
stock_greenberg_T = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_T,
  shares_total_count: shares_total_count_T,
  latest_quarter_shares_total_value: 0,
  percentage_shares_outstanding: shares_total_count_T.fdiv(stock_T.shares_outstanding * 1000000) * 100
)

previous_shares_count = 0
shares_count = 4994
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_T,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 41.48
    )

previous_shares_count = shares_count
shares_count = 4994
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_T,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 40.53
    )

previous_shares_count = shares_count
shares_count = 0
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_T,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 37.25
    )

shares_total_count_CMPR = 0
stock_greenberg_CMPR = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_CMPR,
  shares_total_count: shares_total_count_CMPR,
  latest_quarter_shares_total_value: 0,
  percentage_shares_outstanding: shares_total_count_CMPR.fdiv(stock_CMPR.shares_outstanding * 1000000) * 100
)

previous_shares_count = 0
shares_count = 31697
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_CMPR,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 93.31
    )

previous_shares_count = shares_count
shares_count = 0
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_CMPR,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 86.19
    )

shares_total_count_ESRX = 0
stock_greenberg_ESRX = InvestorStock.create!(
  investor: investor_greenberg,
  stock: stock_ESRX,
  shares_total_count: shares_total_count_ESRX,
  latest_quarter_shares_total_value: 0,
  percentage_shares_outstanding: shares_total_count_ESRX.fdiv(stock_ESRX.shares_outstanding * 1000000) * 100
)

previous_shares_count = 0
shares_count = 1889317
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ESRX,
    designation: "2016Q4",
    traded_shares_count: "",
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: "",
    stock_average_price: 69.40
    )

previous_shares_count = shares_count
shares_count = 1413775
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ESRX,
    designation: "2017Q1",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 65.91
    )

previous_shares_count = shares_count
shares_count = 0
InvestorStockQuarter.create!(
    investor_stock: stock_greenberg_ESRX,
    designation: "2017Q2",
    traded_shares_count: shares_count - previous_shares_count,
    shares_count_at_the_end: shares_count,
    percentage_change_in_owned_shares_from_last_quarter: ((shares_count - previous_shares_count).fdiv(previous_shares_count)) * 100,
    stock_average_price: 63.84
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

puts "Creating Tepper investor stocks and holding history..."

shares_total_count_AGN = 2509619
stock_tepper_AGN = InvestorStock.create!(
  investor: investor_tepper,
  stock: stock_AGN,
  shares_total_count: shares_total_count_AGN,
  latest_quarter_shares_total_value: 610063,
  percentage_shares_outstanding: shares_total_count_AGN.fdiv(stock_AGN.shares_outstanding * 1000000) * 100
)

shares_total_count_GOOG = 585000
stock_tepper_GOOG = InvestorStock.create!(
  investor: investor_tepper,
  stock: stock_GOOG,
  shares_total_count: shares_total_count_GOOG,
  latest_quarter_shares_total_value: 531607,
  percentage_shares_outstanding: shares_total_count_GOOG.fdiv(stock_GOOG.shares_outstanding * 1000000) * 100
)

shares_total_count_BABA = 3693918
stock_tepper_BABA = InvestorStock.create!(
  investor: investor_tepper,
  stock: stock_BABA,
  shares_total_count: shares_total_count_BABA,
  latest_quarter_shares_total_value: 520473,
  percentage_shares_outstanding: shares_total_count_BABA.fdiv(stock_BABA.shares_outstanding * 1000000) * 100
)

shares_total_count_MU = 12900000
stock_tepper_MU = InvestorStock.create!(
  investor: investor_tepper,
  stock: stock_MU,
  shares_total_count: shares_total_count_MU,
  latest_quarter_shares_total_value: 385194,
  percentage_shares_outstanding: shares_total_count_MU.fdiv(stock_MU.shares_outstanding * 1000000) * 100
)

shares_total_count_WPZ = 9182449
stock_tepper_WPZ = InvestorStock.create!(
  investor: investor_tepper,
  stock: stock_WPZ,
  shares_total_count: shares_total_count_WPZ,
  latest_quarter_shares_total_value: 368308,
  percentage_shares_outstanding: shares_total_count_WPZ.fdiv(stock_WPZ.shares_outstanding * 1000000) * 100
)

total_value_for_all_tepper_stocks = investor_tepper.investor_stocks.reduce(0) {|sum, investor_stock| sum + investor_stock.latest_quarter_shares_total_value }

stock_tepper_AGN.update(percentage_weight_compared_to_portfolio_total_value: stock_tepper_AGN.latest_quarter_shares_total_value.fdiv(total_value_for_all_tepper_stocks) * 100)

stock_tepper_GOOG.update(percentage_weight_compared_to_portfolio_total_value: stock_tepper_GOOG.latest_quarter_shares_total_value.fdiv(total_value_for_all_tepper_stocks) * 100)

stock_tepper_BABA.update(percentage_weight_compared_to_portfolio_total_value: stock_tepper_BABA.latest_quarter_shares_total_value.fdiv(total_value_for_all_tepper_stocks) * 100)

stock_tepper_MU.update(percentage_weight_compared_to_portfolio_total_value: stock_tepper_MU.latest_quarter_shares_total_value.fdiv(total_value_for_all_tepper_stocks) * 100)

stock_tepper_WPZ.update(percentage_weight_compared_to_portfolio_total_value: stock_tepper_WPZ.latest_quarter_shares_total_value.fdiv(total_value_for_all_tepper_stocks) * 100)


puts "Creating Buffett investor stocks and holding history..."

shares_total_count_KHC = 325634818
stock_buffett_KHC = InvestorStock.create!(
  investor: investor_buffett,
  stock: stock_KHC,
  shares_total_count: shares_total_count_KHC,
  latest_quarter_shares_total_value: 27887366,
  percentage_shares_outstanding: shares_total_count_KHC.fdiv(stock_KHC.shares_outstanding * 1000000) * 100
)

shares_total_count_WFC = 467987270
stock_buffett_WFC = InvestorStock.create!(
  investor: investor_buffett,
  stock: stock_WFC,
  shares_total_count: shares_total_count_WFC,
  latest_quarter_shares_total_value: 25931175,
  percentage_shares_outstanding: shares_total_count_WFC.fdiv(stock_WFC.shares_outstanding * 1000000) * 100
)

shares_total_count_AAPL = 130191960
stock_buffett_AAPL = InvestorStock.create!(
  investor: investor_buffett,
  stock: stock_AAPL,
  shares_total_count: shares_total_count_AAPL,
  latest_quarter_shares_total_value: 18750246,
  percentage_shares_outstanding: shares_total_count_AAPL.fdiv(stock_AAPL.shares_outstanding * 1000000) * 100
)

shares_total_count_KO = 400000000
stock_buffett_KO = InvestorStock.create!(
  investor: investor_buffett,
  stock: stock_KO,
  shares_total_count: shares_total_count_KO,
  latest_quarter_shares_total_value: 17939999,
  percentage_shares_outstanding: shares_total_count_KO.fdiv(stock_KO.shares_outstanding * 1000000) * 100
)

shares_total_count_AXP = 151610700
stock_buffett_AXP = InvestorStock.create!(
  investor: investor_buffett,
  stock: stock_AXP,
  shares_total_count: shares_total_count_AXP,
  latest_quarter_shares_total_value: 12771685,
  percentage_shares_outstanding: shares_total_count_AXP.fdiv(stock_AXP.shares_outstanding * 1000000) * 100
)

total_value_for_all_buffett_stocks = investor_buffett.investor_stocks.reduce(0) {|sum, investor_stock| sum + investor_stock.latest_quarter_shares_total_value }

stock_buffett_KHC.update(percentage_weight_compared_to_portfolio_total_value: stock_buffett_KHC.latest_quarter_shares_total_value.fdiv(total_value_for_all_buffett_stocks) * 100)

stock_buffett_WFC.update(percentage_weight_compared_to_portfolio_total_value: stock_buffett_WFC.latest_quarter_shares_total_value.fdiv(total_value_for_all_buffett_stocks) * 100)

stock_buffett_AAPL.update(percentage_weight_compared_to_portfolio_total_value: stock_buffett_AAPL.latest_quarter_shares_total_value.fdiv(total_value_for_all_buffett_stocks) * 100)

stock_buffett_KO.update(percentage_weight_compared_to_portfolio_total_value: stock_buffett_KO.latest_quarter_shares_total_value.fdiv(total_value_for_all_buffett_stocks) * 100)

stock_buffett_AXP.update(percentage_weight_compared_to_portfolio_total_value: stock_buffett_AXP.latest_quarter_shares_total_value.fdiv(total_value_for_all_buffett_stocks) * 100)



puts "Finished!"
