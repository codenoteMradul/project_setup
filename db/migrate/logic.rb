array = [2,5,9,10]  target = 7
output = [0,1]




# array = [1,2,3,4,5]  target = 9

# output = [3,4]

class practice

	sum = 0
	def answer(arr,target)
		len = arr.length-1
		
		for i in (0...len)
			sum = sum + i
			if (sum == target)
				puts sum
			end
			i += 1
		end
	end
end

result = practice.new

result.answer(arr,target)


