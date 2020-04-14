class A
  def foo(x)
    bar(x)
  end

  def bar(x)
  end

  def self.test(x)
  end
end

class B < A
  def bar(x)
  end
end

A.new.foo(1)
B.new.foo("str")
B.new.bar(nil)
A.test(1)
B.test("str")

__END__
# Classes
class A
  def foo : (Integer | String) -> NilClass
  def bar : (Integer | String) -> NilClass
  def self.test : (Integer | String) -> NilClass
end
class B
  def bar : (Integer | NilClass | String) -> NilClass
end
