module MyMath
	def self.looping_fibonacci(n)
		fib_array = [1, 1]

		until fib_array.length == n
			fib_array.push(fib_array[-1] + fib_array[-2])
		end

		return fib_array[-1]
	end

	def self.recursive_fibonacci(n)
		if n == 1 || n == 2
			return 1
		else
			return self.recursive_fibonacci(n-1) + self.recursive_fibonacci(n-2)
		end
	end
end
