require './stack'
require './extras'
class TestClass
  def initialize
    stack = Stack.new
    test_array = []
    for i in 0..10000
      test_array.push(i)
    end
    #push and pop functions
    print 'stack after push '
    print stack.push(5)
    print "\n"
    print 'pop item is '
    puts stack.pop()
    #get max by ruby function max
    print 'max element in stack is(by ordinary way)  '
    puts stack.max(test_array)
    #get max by sorting array in asc order by merge sort algorithm of O(n)
    print 'max element in stack is(by soring with merge sort algorithm and get max)  '
    puts stack.max_by_merge_sort_algorithm(test_array)
    #get mean
    extras = Extras.new
    print 'mean of numbers in stack is '
    puts extras.mean(test_array)

  end
end
test = TestClass.new