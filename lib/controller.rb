# frozen_string_literal: true

require 'view'
require 'gossip'

# Create controller class
class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossips = Gossip.all
    @view.index_gossips(all_gossips)
  end
end
