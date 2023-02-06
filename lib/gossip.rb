# frozen_string_literal: true

# Create Gossip class
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open('./db/gossip.csv', 'a') do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.foreach('./db/gossip.csv') do |gossip|
      gossip_temp = Gossip.new(gossip[0], gossip[1])
      all_gossips << gossip_temp
    end
    all_gossips
  end

  def self.delete(item)
    gossips = CSV.read('./db/gossip.csv')
    gossips.delete_at(item)
    CSV.open('db/gossip.csv', 'w') do |csv|
      gossips.each do |gossip|
        csv << gossip
      end
    end
  end
end
