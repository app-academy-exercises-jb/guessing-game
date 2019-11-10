class GuessingGame
    def initialize(min, max)
        @min, @max = min, max
        
        rand1 = rand(max-min)
        
        @secret_num = (min..max)[rand1]
        @num_attempts = 0
        @game_over = false
    end
end


_END__

GuessingGame
  #initialize
    should accept two numbers, min and max, as args (FAILED - 1)
    should set @secret_num to a random number between min and max inclusive (FAILED - 2)
    should call #rand (FAILED - 3)
    should set @num_attempts to 0 (FAILED - 4)
    should set @game_over to false (FAILED - 5)
  #num_attempts
    should get (return) @num_attempts (FAILED - 6)
  #game_over?
    should get (return) @game_over (FAILED - 7)
  #check_num
    should accept a num as an arg (FAILED - 8)
    should increment @num_attempts (FAILED - 9)
    should set @game_over to true if the num is equal to @secret_num (FAILED - 10)
    when the num is equal to @secret_num
      should print 'you win' (FAILED - 11)
    when the num is greater than @secret_num
      it should print 'too big' (FAILED - 12)
    when the num is less than @secret_num
      it should print 'too small' (FAILED - 13)
  ask_user
    should print 'enter a number' (FAILED - 14)
    should call #gets to get input from the user (FAILED - 15)
    should call String#chomp on the input received from the user (FAILED - 16)
    should call String#to_i on the input string to convert it into an integer number (FAILED - 17)
    should call GuessingGame#check_num with the user's number (FAILED - 18)