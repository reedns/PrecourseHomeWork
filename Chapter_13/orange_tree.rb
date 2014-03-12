class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
    puts "An orange tree has sprouted"
  end
  
  def one_year_passes
    @age += 1
    @height += 2
    @oranges = 0

    @oranges += @age*10 if @age >= 3
     
    if @age == 10
      puts "The Orange Tree has died..."
      exit
    end
    
    puts "One year has passed. The Orange Tree is now #{@height} feet tall and has #{@oranges} oranges!" 
  end
  
  
  def pick_oranges
    @oranges -= 1
    puts "You picked a delicious orange"
  end
end

tree = OrangeTree.new

5.times { tree.one_year_passes }
tree.pick_oranges
5.times { tree.one_year_passes }