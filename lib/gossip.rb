# frozen_string_literal: true

# Create Gossip class
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    data = File.open('./db/gossip.csv', 'a')
    data.puts "#{@author}, #{content}"
    data.close
  end

  def self.all
    all_gossips = []
    CSV.open('./db/gossip.csv', 'r').each do |csv|
      all_gossips << csv
    end
    all_gossips
  end
end
