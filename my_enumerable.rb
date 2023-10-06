module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    new_res = []
    each { |item| new_res << item if yield(item) }
    new_res.join(', ')
  end
  
end
