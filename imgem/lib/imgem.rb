require "imgem/version"
require 'json'

module Imgem
  class Error < StandardError; 
  end

  class Plate
  	def self.parse(plate)
      plates = JSON.parse(File.read('lib/plate_list.json'))
      city_hash = plates.select{ |p| p["plaka"] == plate.to_i }

      if city_hash.any?
      	city_hash.first["il"]
      else
      	 "I dont know!"
      end

  

  	  
   	end
  end

  # Your code goes here...
end
