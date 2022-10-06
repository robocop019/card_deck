# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Deck
  def initialize(input)
    @deck = input.each {|key, value| Card.new(key, value)}
  end

  def remaining_cards
    @deck.length
  end

  def draw_card
    questions = @deck.keys
    p questions
  end
end

class Card
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def question
    
  end

  def answer
    
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}


deck = Deck.new(trivia_data) # deck is an instance of the Deck class

p deck

deck.remaining_cards

deck.draw_card

# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end