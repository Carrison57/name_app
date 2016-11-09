def fav_numbers(fav1, fav2, fav3)
	sum = fav1 + fav2 + fav3
end

def age_num_conditional(age, sum)
	if age > sum
		"Your age of #{age} is greater than #{sum}, which is the sum of your favorite three numbers."
	else
		"Your age of #{age} is less than #{sum}, which is the sum of your favorite numbers."
	end
end

def fav_numbers_sum(*numbers)
		total = 0
		
		numbers.each do |number|
			total += number
		end
		total
end