class Size
  def self.random_size
    all_sizes.sample
  end
  
  def self.all_sizes
     ["XS", "S", "M", "L", "XL", "XXL"]
  end
end

# {"XS" => "(15 x 20 ft)",
# "S" => "(30 x 40 ft)",
# "M" => "(50 x 60 ft)",
# "L" => "(100 x 150 ft)",
# "XL" => "(300 x 200 ft)",
# "XXL" => "(500 x 300 ft)"}