module RT
  class API
    include HTTParty

    @@api_key = ''

    base_uri 'http://api.rottentomatoes.com/api/public'

    def self.api_key
      @@api_key
    end

    def self.api_key=(key)
      @@api_key = key
    end
  end
end