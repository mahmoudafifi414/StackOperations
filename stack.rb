require './stack_abstraction'
require './sort_class'
class Stack < StackAbstraction
  def initialize
    super
    @number_stack = [10]
    @sort = SortClass.new
  end

  def push(number)
    #check if the param is number
    if self.is_number(number)
      #return array with new added elemnt
      return @number_stack.push(number)
    else
      print 'You should enter number'
    end
  end

  def pop
    #pop the stack
    return @number_stack.pop
  end

  def max_by_merge_sort_algorithm(stack)
    return @sort.merge_sort_algorithm(stack)[-1]
  end

  def max(stack)
    return stack.max
  end

  def is_number(number)
    return number.is_a? Integer
  end

  #sum or stack element
  def sum(stack)
    return stack.inject {|sum, element| sum + element}
  end
  #size or stack
  def size(stack)
    return stack.size
  end
end

