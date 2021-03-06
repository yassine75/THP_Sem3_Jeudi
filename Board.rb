require './BoardCase'
class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :BoardCases_contain

  def initialize
    @BoardCases_contain = []
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    for i in (0..8)
    	@BoardCases_contain << BoardCase.new(i+1)
    end
  end

  def display
  #TO DO : afficher le plateau
    puts "#{@BoardCases_contain[0]} #{@BoardCases_contain[1]} #{@BoardCases_contain[2]}"
    puts "#{@BoardCases_contain[3]} #{@BoardCases_contain[4]} #{@BoardCases_contain[5]}"
    puts "#{@BoardCases_contain[6]} #{@BoardCases_contain[7]} #{@BoardCases_contain[8]}"
  end

  def play (player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
    puts "à toi de jouer!
    entre la numéro de la case que tu veux jouer (entre 1 et 9)"
    case_number_played = gets.chomp().to_i
    if player == "X"
    	@BoardCases_contain[case_number_played-1].value = "X"
    else
    	@BoardCases_contain[case_number_played-1].value = "O"
    end
  end

  def victory?(player_name)
    #TO DO : qui gagne ?
    if "{#{@BoardCases_contain[0]}#{@BoardCases_contain[1]}#{@BoardCases_contain[1]}" == "XXX" || "#{@BoardCases_contain[0]}#{@BoardCases_contain[1]}#{@BoardCases_contain[1]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[3]}#{@BoardCases_contain[4]}#{@BoardCases_contain[5]}" == "XXX" || "#{@BoardCases_contain[4]}#{@BoardCases_contain[5]}#{@BoardCases_contain[6]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[6]}#{@BoardCases_contain[7]}#{@BoardCases_contain[8]}" == "XXX" || "#{@BoardCases_contain[6]}#{@BoardCases_contain[7]}#{@BoardCases_contain[8]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[0]}#{@BoardCases_contain[3]}#{@BoardCases_contain[6]}" == "XXX" || "#{@BoardCases_contain[0]} + #{@BoardCases_contain[3]} + #{@BoardCases_contain[6]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[1]}#{@BoardCases_contain[4]}#{@BoardCases_contain[7]}" == "XXX" || "#{@BoardCases_contain[1]}#{@BoardCases_contain[4]}#{@BoardCases_contain[7]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[2]}#{@BoardCases_contain[5]}#{@BoardCases_contain[8]}" == "XXX" || "#{@BoardCases_contain[2]}#{@BoardCases_contain[5]}#{@BoardCases_contain[8]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[0]}#{@BoardCases_contain[4]}#{@BoardCases_contain[8]}" == "XXX" || "#{@BoardCases_contain[0]}#{@BoardCases_contain[4]}#{@BoardCases_contain[8]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    elsif "#{@BoardCases_contain[2]}#{@BoardCases_contain[4]}#{@BoardCases_contain[6]}" == "XXX" || "#{@BoardCases_contain[2]}#{@BoardCases_contain[4]}#{@BoardCases_contain[6]}" == "OOO"
      puts "#{player_name} win!"
      display
      abort
    else
    end
  end
end

