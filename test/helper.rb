# test/test_helper.rb

# Library
require_relative '../lib/rottentom'

# Dependencies
require 'minitest/autorun'
require 'pp'

describe "Test Constants" do
  API_KEY = File.open('test/api_key').read
end