class SortClass
  def merge_sort_algorithm(stack)
    if stack.length <= 1
      stack
    else
      mid = (stack.length / 2).floor
      left = merge_sort_algorithm(stack[0..mid - 1])
      right = merge_sort_algorithm(stack[mid..stack.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0] < right[0]
      [left[0]] + merge(left[1..left.length], right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
  end
end