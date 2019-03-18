# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence that lets us know how you got to class and how long it took
# - Print this complete sentence

class Commute
    attr_accessor :startTime, :endTime, @transport
    attr_reader :commute

    def initialize
        @startTime = 0
        @endTime = 0
        @commute = 0
        @transport = 0
    end

    def start
        @transport = get_transport
        @startTime = get_start_time
        @endTime = get_end_time
        get_commute(startTime, endTime)
    end

    def get_start_time
        puts "What time did you leave the house?"
        @startTime = gets.chomp
    end

    def get_end_time
        puts "What time did you arrive in class?"
        @endTime = gets.chomp
    end

    def get_commute(startTime, endTime)

    end

    def get_transport
        puts "What mode of transport did you take?"
        @transport = gets.strip.chomp.downcase
    end
end

# Begin Program
myCommute = Commute.new
myCommute.start