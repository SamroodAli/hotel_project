require_relative "room"

class Hotel
  def initialize(name,rooms)
    @name = name
    @rooms = {}
    rooms.each {|k,v| @rooms[k]= Room.new(rooms[k])}
  end
end
