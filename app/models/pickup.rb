class Pickup < ApplicationRecord
  belongs_to :creature, optional: true
  
  scope :randomize, ->(x) { limit(50).sample(x)  }
  scope :drops, ->() { where.not(type: 'Terrain') }

  def self.accepted_types
    ['Skill', 'Special', 'Spell', 'Effect', 'Terrain']
  end



  def self.randomize_drops(rounds = 5, num_players = 4)
    drops_per_round = (num_players * 3)/2
    available = where.not(type: 'Terrain').limit(drops_per_round * rounds).order('random()')
    round_drops = []
    rounds.times do 
      round_drops.push(available.sample(drops_per_round))
    end
    round_drops
  end

end