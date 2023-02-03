# frozen_string_literal: true

# Create view class
class View
  def create_gossip
    puts "Qui est l'auteur du gossip ?"
    author = gets.chomp
    puts 'Quel est le contenu du gossip ?'
    content = gets.chomp
    params = { content: content, author: author }
  end

  def index_gossips(gossips)
    potin = 1
    gossips.each do |gossip|
      puts "#{potin} - #{gossip}"
      potin += 1
    end
  end
end
