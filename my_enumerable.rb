module MyEnumerable
  def all?
    each do |item|
      unless yield(item)
        puts false
        return false
      end
    end
    puts true
    true
  end

  def any?
    each do |item|
      if yield(item)
        puts true
        return true
      end
    end
    puts false
    false
  end

  def filter
    new_res = []
    each { |item| new_res << item if yield(item) }
    puts new_res.join(', ')
  end
end
