class Brewerydb
  include HTTParty

  base_uri "http://api.brewerydb.com/v2"

  def initialize(api_key)
    raise "You need to provide a BreweryDB API Key" if api_key.nil?
    @api_key = api_key
  end

  def search(query)
    self.class.get '/search', query: {
      type: 'beer',
      q: query,
      key: @api_key,
      format: 'json'
    }
  end
end
