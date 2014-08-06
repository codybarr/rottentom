module RT
  class DVD
    def self.upcoming
      # Accepted parameters:
      # :page, :include_adult (true / false), :year
      options = { apikey: RT::API.api_key }

      results = RT::API.get("/v1.0/lists/dvds/upcoming.json", query: options)
      results = JSON.parse(results)['movies']
      results.collect! { |movie| Hashie::Mash.new(movie) }

    end
  end
end