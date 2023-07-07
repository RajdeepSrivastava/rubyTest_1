def weekly_salary(arr)
	flag = 1
	hour = 0

	extra_hour = 0
	arr.each do |x|
		if flag < 6
			if x<=8
				hour +=x
			else
				hour += 8
				extra_hour += (x-8)
			end
			flag += 1

		else
			if x<=8
				hour +=2*x
			else
				hour += 2*8
				extra_hour += 2*(x-8)
			end

		end
	end
	return total = (hour * 10) + (extra_hour * 15)
end





puts weekly_salary([8, 8, 8, 8, 8, 0, 0]) 

puts weekly_salary([10, 10, 10, 0, 8, 0, 0]) 

puts weekly_salary([0, 0, 0, 0, 0, 12, 0]) 
