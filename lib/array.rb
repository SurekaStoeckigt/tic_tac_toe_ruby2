
class Array

  def all_empty?
    self.all? {|element| element.empty?}
  end

  def all_same?
    self.all? {|element| element == self[1]}
  end

  def any_empty?
    self.any? {|element| element.empty?}
  end

  def none_empty?
    !any_empty?
  end

end
