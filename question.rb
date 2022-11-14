class Question

  attr_reader :random1, :random2, :question, :userInput, :correct;

  def initialize()
    @random1 = rand(1..20);
    @random2 = rand(1..20);
    @question = @random1 + @random2;
    @correct = false;
  end

  def askQuestion()
    print "What is #{@random1} plus #{random2}? Input: "
    @userInput = gets.chomp.to_i
  end

  def check()
    if @question == @userInput
      @correct = true;
    end
  end

end

