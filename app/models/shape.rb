class Shape

  def self.random_shape
    all_shapes.sample
  end

  def self.all_shapes
   [ "rectangle", "circular", "domed", "square", "tall with tiers" ]
  end

end