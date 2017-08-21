require 'csv'
require 'open-uri'
require 'json'

class GetDescriptionService
  def searcher(tag)
    # Get the API url and insert your search term as a parameter
    api_url = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=#{tag}"
    wiki_get = ""

    # Use open-uri to get data from the url
    open(api_url) do |stream|
      # Data format is JSON, so we parse the JSON and we can then use it like a hash
      wiki = JSON.parse(stream.read)
      # We access a subhash, iterate over it and store the title and extract in an array
      wiki_get = wiki['query']['pages'].first.second['extract']
    end
    # The array is returned
    wiki_get
  end
end
