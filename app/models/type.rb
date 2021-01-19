class Type
  def self.random_type
    all_types.sample
  end

  def self.all_types
    ['fight', 'puzzle', 'mixed', 'treasure']
  end
end