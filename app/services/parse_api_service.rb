require 'csv'
require 'open-uri'
require 'json'

class ParseApiService

  def searcher
    # Get the API url and insert your search term as a parameter
    api_url = "https://newsapi.org/v1/articles?source=financial-times&sortBy=top&apiKey=#{ENV['API_KEY_FINANCIAL_TIMES']}"
    news_get = []

    # Use open-uri to get data from the url
    open(api_url) do |stream|
      # Data format is JSON, so we parse the JSON and we can then use it like a hash
      news = JSON.parse(stream.read)
      # We access a subhash, iterate over it and store the title and extract in an array
      news_get << news
    end
    # The array is returned
    news_get
  end
end
