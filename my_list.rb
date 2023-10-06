require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list.map(&:to_i)
  end

  def each(&block)
    @list.each(&block)
  end
end
