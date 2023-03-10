# frozen_string_literal: true
require_relative 'connection'
require_relative 'road'
require_relative 'utils'
class Main
  c = Connection.new().pgCon()
  #list = Entreprise.all_entreprise(c)
  list_road = Road.allRoad(c)
  rentability = Entreprise.rentability(c,list_road[0])
  puts rentability[0]
end

