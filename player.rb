class Player

  attr_reader :name, :lives;

  def initialize(num)
    print "What is player #{num}'s name? "
    @name = gets.chomp;
    @lives = 3
  end

  def loseLife()
    @lives -= 1
  end

end
