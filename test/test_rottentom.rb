require 'helper'

describe RT::DVD do

  RT::API.api_key = API_KEY

  describe ".upcoming" do

    it "should return upcoming DVDs" do
      skip("Worked as of 8/5/14 - check http://www.rottentomatoes.com/dvd/upcoming/ for latest upcoming releases")
      upcoming = RT::DVD.upcoming
      upcoming.first.title.must_equal "Divergent"
    end

  end

end
