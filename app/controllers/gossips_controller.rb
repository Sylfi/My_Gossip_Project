class GossipsController < ApplicationController

    def index
        @gossip = Gossip.all
        
    end

    def show
        @gossip = Gossip.all
    end 

end
