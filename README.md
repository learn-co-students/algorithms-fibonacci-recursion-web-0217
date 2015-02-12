---
tags: recursion, intro
languages: ruby
resources: 
---
# Algorithms Fibonacci Recursion
## Recursion
A recursive function is a function that calls itself. When writing a recursive function, we'll want to define:
- A base case
- A recursive call that reduces other cases toward the base case

Let's say we want to write a recursive function that reverses a string, without using the `reverse` method. What information do you think will be important? We'll want to keep track of what we have reversed so far, as well as what we have yet to reverse. Let's call those variables `reversed` and `to_reverse`.

What is our base case? If our `to_reverse` string is empty, then we know that our `reversed` string is complete.

What if our `to_reverse` string is not empty? Then we'll want to take the first letter of our `to_reverse` string and add it to the beginning of our `reversed` string, and check again.

In Ruby:
```
def my_reverse_helper(to_reverse, reversed)
	if to_reverse.empty?
		reversed
	else
		my_reverse_helper(to_reverse[1..-1], "#{to_reverse[0]}#{reversed}")
	end
end
```

Once we've written our helper, we can define a `my_reverse` method:
```
def my_reverse(string)
	my_reverse_helper(string, "")
end
```

## Fibonacci Sequence
The Fibonacci sequence is a sequence of numbers where the first two numbers are 1, and every subsequent number is the sum of the two numbers before it.

The first 10 numbers in the Fibonacci sequence are:

> 1, 1, 2, 3, 5, 8, 13, 21, 34, 55

## Instructions
- Write an iterative method `looping_fibonacci(n)` that returns the nth term of the Fibonacci sequence. Use a loop, such as `while` or `times`.
- Write a recursive method `recursive_fibonacci(n)` that returns the nth term of the Fibonacci sequence. What is your base case? What is your recursive call? See if you can explain it in English before starting to write code. Feel free to work with your group.

## Resources
* (Blog post on recursion by Vaidehi Joshi, Ruby-006)[http://vaidehijoshi.github.io/blog/2014/12/14/to-understand-recursion-you-must-first-understand-recursion/]
* (Stack Overflow: "What is Ruby recursion and how does it work?")[http://stackoverflow.com/questions/6418017/what-is-ruby-recursion-and-how-does-it-work]