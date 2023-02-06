# frozen_string_literal: true

require 'controller'

# Create router class
class Router
  # On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller = Controller.new
  end

  # rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform
    system 'clear'
    puts 'Bienvenue dans The Gossip Project'

    loop do # remplace le while que rubocop n'aime pas
      # on affiche le menu
      puts
      puts 'Tu veux faire quoi jeune mouss ?'
      puts '  1 - Je veux créer un gossip'
      puts '  2 - Je veux lire tous les potins'
      puts '  3 - Je veux supprimer un potin'
      puts "  4 - Je veux quitter l'application"
      params = gets.chomp.to_i

      case params
      when 1
        puts 'Tu as choisi de créer un gossip.', ''
        @controller.create_gossip

      when 2
        puts 'Tu as choisi de consulter les gossips.', ''
        @controller.index_gossips

      when 3
        puts 'Tu as choisi de supprimer un potin', ''
        @controller.delete_gossip

      when 4
        puts 'À bientôt !'
        break # Ce break permet de sortir de la boucle while, c'est la seule façon !

      else
        puts "Ce choix n'existe pas, merci de réessayer.", ''
      end
    end
  end
end
