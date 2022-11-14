class Question

  attr_accessor :random1, :random2, :question;

  def initialize()
    @random1 = rand(11);
    @random2 = rand(11);
    @question = @random1 + @random2;

    print "What is #{@random1} plus #{random2}? Input: "
    userInput = gets.chomp.to_i;
    puts gets.chomp.ti_i;
  end

  def check()
  end


end


p = Question.new;

puts p.random;
puts p.question;