def triangle_type(x, y ,z)
  
  a,b,c = [x,y,z].sort
  if (a+b <= c)
    return "0"
  else
 		return 1 if a**2 + b**2 > c**2
    return 2 if a**2 + b**2 == c**2
    return 3 if a**2 + b**2 < c**2
  end
end
  
puts triangle_type(2, 4, 6)
puts triangle_type(3, 4, 5)
puts triangle_type(7, 12, 8)
puts triangle_type(8, 5, 7) 
