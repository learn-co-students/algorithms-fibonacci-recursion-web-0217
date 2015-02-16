module MyMath
  def self.looping_fibonacci(n)
    if n == 1 || n == 2
      1
    else
      two_before = 1
      one_before = 1
      new_term = nil
      (3..n).each do |current|
        new_term = one_before + two_before
        two_before = one_before
        one_before = new_term
      end
      return new_term
    end
  end

  def self.recursive_fibonacci(n)
    if n == 1 || n == 2
      1
    else
      self.recursive_fibonacci(n-1) + self.recursive_fibonacci(n-2)
    end
  end
end