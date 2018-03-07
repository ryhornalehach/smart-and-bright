require 'uri'

class Api::V1::ShopController < ApplicationController

  def index
      listings = [] # creating an empty array to store the results
      uri = URI("https://openapi.etsy.com/v2/shops/SmartAndBright/listings/active?api_key=#{ENV['ETSY_KEYSTRING']}")  # making the URI call
      buffer = open(uri).read     # reading the response from ETSY API
      result = JSON.parse(buffer) # parsing the response to JSON

      result['results'].each do |lot|
          item = {}   # creating an empty hash to store the listing's data
          item['title'] = lot['title']  # adding item title to the item hash
          item['price'] = lot['price']  # adding item price to the item hash
          item['url'] = lot['url']      # adding item url to the item hash
          item['listing_id'] = lot['listing_id']  # adding item ID to the item hash

          uri_photo = URI("https://openapi.etsy.com/v2//listings/#{lot['listing_id']}/images?api_key=#{ENV['ETSY_KEYSTRING']}")  # making the URI call to get the photograph
          buffer_photo = open(uri_photo).read     # reading the response from ETSY API
          result_photo = JSON.parse(buffer_photo) # parsing the response to JSON
          item['photo'] = result_photo['results'][0]['url_170x135']   # adding photo url to the item hash

          listings << item  # pushing the item to the array of listings
      end

      render json: { listings: listings }
  end

end
