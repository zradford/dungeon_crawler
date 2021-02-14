class Creature < ApplicationRecord
  belongs_to :user
  def self.accepted_types
    ['Monster', 'Character']
  end
end
