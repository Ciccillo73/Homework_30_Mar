class Ropasc

  @winner = {
    'paper'=> 'rock',
    'scissors'=> 'paper',
    'rock'=> 'scissors'
  }

  def self.check(player1, player2)
    player1 = player1.downcase()
    player2 = player2.downcase()

    if player1 == player2
      return "Draw,you both choose #{player1}"
    elsif @winner[player1] == player2
      return "Player 1 ,the choice was #{player1}"
    elsif @winner[player2] == player1
      return "Player 2 ,the choice was #{player2}"
    else
      return "Something wrong,please retype"
    end
  end

#this method creates a random number and then assign the number to a figure
  def self.cpu_generator()
    cpu = rand(1..3)
    if cpu == 1
      return cpu = 'scissors'
    elsif cpu == 2
      return cpu = 'paper'
    else
      return cpu = 'rock'
    end
  end

  def self.check_cpu(player1)

      cpu = cpu_generator()
      player1 = player1.downcase()

      if player1 == cpu
        return "Draw,you both choose #{player1}"
      elsif @winner[player1] == cpu
        return "Player 1 ,the choice was #{player1}"
      elsif @winner[cpu] == player1
        return "Computer ,the choice was #{cpu}"
      else
        return "Something wrong,please retype"
      end
  end


end
