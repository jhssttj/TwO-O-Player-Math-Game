require './question'
require './player'

class Game

  def initialize()
    puts "Game start"
    @gameOver = false;
    p1 = Player.new(1)
    p2 = Player.new(2)
    current = p1
    question = Question.new()

    while (!@gameOver)
      # Ask Question and check ans
      print "#{current.name}: "
      question.askQuestion
      question.check()
      
      # Check if question is correct or not and update
      if !question.correct
        current.loseLife
        puts "Incorrect! #{p1.name} has #{p1.lives} lives and #{p2.name} has #{p2.lives} lives"
      else 
        puts "Correct!"  
      end

      # Check if game is Over
      if current.lives == 0
        puts "Game Over for #{current.name}!"
        gameOver()
      end    
      

      # Set new question for next player
      question = Question.new()
      # Set other player to be asked
      if current == p1
        current = p2
      else 
        current = p1
      end

    end
  end

  def gameOver()
    @gameOver = true;
  end

end



game = Game.new
