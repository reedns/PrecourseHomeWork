require 'pry'

class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born!"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
   
    3.times do 
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores filling the room with smoke!"
      end
    end
    
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} is starving and in desperation he eats YOU!"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} does the potty dance!"
    end
  end
end

puts "You have a new pet dragon. What would you like your new pet's name to be?"
name = gets.chomp

pet = Dragon.new(name)

while true
  puts "Would you like to feed, walk or put #{name} to bed? Enter exit to leave."
  action = gets.chomp.downcase

  if !["walk", "feed", "bed"].include?(action)
    puts "You can only walk, feed or put to bed."
  end

  if ["feed"].include?(action)
    pet.feed
  elsif ["walk"].include?(action)
    pet.walk
  elsif ["put to bed"].include?(action)
    pet.put_to_bed
  end

  if action == "exit"
    exit
  end
end

