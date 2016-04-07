# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []


deck = []

def create_deck(suits, ranks, deck) 
	suits.each do |suit|
		ranks.each do |rank|
			deck << [rank, suit]
		end
	end
end

def shuffle_cards(deck)
	deck.shuffle!
	return deck
end

def determine_players(players)
	puts "Please enter player name or n for no more players"
	answer = nil
	until ["n", "N"].include?(answer)
		answer = gets.chomp
		if ["n", "N"].include?(answer)
			return 
		else 
			players << [answer]
		end
	end
end

def deal_cards(deck, players)
	cards_to_deal = players.length
	i = 0
	while i < cards_to_deal do
		players[0] = deck.shift



create_deck(suits, ranks, deck)
shuffle_cards(deck)
determine_players(players)

puts players



