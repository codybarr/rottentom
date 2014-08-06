require 'httparty'
require 'hashie'
require 'json'

Dir[File.dirname(__FILE__) + '/rottentom/*.rb'].each do |file|
  require file
end