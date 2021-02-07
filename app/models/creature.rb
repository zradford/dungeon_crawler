class Creature < ApplicationRecord
  def self.accepted_types
    ['Monster', 'Character']
  end
end
