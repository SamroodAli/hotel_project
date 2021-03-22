require_relative "room"

class Hotel
  def initialize(name,rooms)
    @name = name
    @rooms = {}
    rooms.each {|k,v| @rooms[k]= Room.new(rooms[k])}
  end

  def name
    @name.split.each(&:capitalize!).join(" ")
  end
  
  def rooms
    @rooms
  end

  def room_exists?(room_name)
    @rooms.has_key?(room_name)
  end

  def check_in(name,room_name)
    if room_exists?(room_name)
      if @rooms[room_name].add_occupant(name)
        puts "check in successful"
      else
        puts "sorry, room is full"
      end
    else
      puts "sorry, room does not exist"
      return false
    end
  end

  def has_vacancy?
    @rooms.values.any? {|room| !room.full?}
  end
end
