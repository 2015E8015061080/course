class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
		a = ["R","P","S"]
    raise  NoSuchStrategyError,"Strategy must be one of R,P,S" unless (a.include?player1[1]) and (a.include?player2[1])
		beats = Hash[
    	"R"     => "P",
    	"P"    => "S",
    	"S" => "R"
  	]
		p1 = player1[1]
		p2 = player2[1]
		if p1 == p2 then return player1
		elsif p1 == beats[p2] then return player1
		else return player2
		end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a?(Array)
		 return self.tournament_winner([self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1])])
		end
		return self.winner(tournament[0],tournament[1])
  end

end

