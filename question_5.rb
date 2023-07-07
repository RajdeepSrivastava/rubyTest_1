def to_hash(arr)
  arr.map do |ch| 
   { ch => ch.ord  }
   end
end

puts to_hash(["a", "b", "c"]).inspect
puts to_hash(["^"]).inspect
puts to_hash([]).inspect