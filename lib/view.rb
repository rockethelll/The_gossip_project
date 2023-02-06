# frozen_string_literal: true

# Create view class
class View
  def create_gossip
    puts "Qui est l'auteur du gossip ?"
    author = gets.chomp
    puts 'Quel est le contenu du gossip ?'
    content = gets.chomp
    { author: author, content: content }
  end

  def index_gossips(gossips)
    gossips.each_with_index do |gossip, index|
      puts "Potin n°#{index} - D'après #{gossip.author}, #{gossip.content}"
    end
  end

  def delete_gossip
    puts 'Quel potin souhaites tu effacer ?'
    gets.chomp.to_i
  end
end
