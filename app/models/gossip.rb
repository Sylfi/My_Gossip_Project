class Gossip < ApplicationRecord
    belongs_to: user
    has_many: gossips
end
