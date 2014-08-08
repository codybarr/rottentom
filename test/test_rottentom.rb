require 'helper'

describe RT::DVD do

  RT::API.api_key = API_KEY

  describe ".current" do
    let (:current) { RT::DVD.current }

    it "should return results" do
      current.first.release_dates.dvd.wont_be_empty
    end
  end

  describe ".new_releases" do
    let (:new_dvds) { RT::DVD.current }

    it "should return results" do
      new_dvds.first.release_dates.dvd.wont_be_empty
    end
  end



  describe ".upcoming" do
    let (:upcoming) { RT::DVD.upcoming }

    it "should return upcoming DVDs" do
      skip("Worked as of 8/5/14 - check http://www.rottentomatoes.com/dvd/upcoming/ for latest upcoming releases")
      upcoming.first.title.must_equal "Divergent"
    end

    it "should allow us to find the imdb id of a given movie" do 
      skip("Worked as of 8/5/14 - check http://www.rottentomatoes.com/dvd/upcoming/ for latest upcoming releases")
      upcoming.first.alternate_ids.imdb.must_equal "1840309"
    end
  end

end
