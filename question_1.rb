def license_plate(s, n)
  groups = []

  s.upcase!
  s.gsub!(/-/, '') 
  reversed = s.reverse
  
  while reversed.length > 0
    groups << reversed.slice!(0, n)
  end
  
  groups.join('-').reverse
end


puts license_plate("5F3Z-2e-9-w", 4) 

puts license_plate("2-5g-3-J", 2)

puts license_plate("2-4A0r7-4k", 3) 

puts license_plate("nlj-206-fv", 3) 
