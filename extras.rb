require './stack'
class Extras
  def initialize
    @stack = Stack.new
  end
  #get mean by divide sum and size of stack
  def mean(stack)
    return @stack.sum(stack) / @stack.size(stack)
  end
end