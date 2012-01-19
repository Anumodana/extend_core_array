Array.class_eval do
  
  def match_positions(arg)
    self.zip(arg).map { |x,y| x == y }
  end
    
  def select_index(*args)
    tmp = []
    args.flatten.each {|a| tmp << self.at(a) }
    tmp
  end
  
  def reverse_select_index(*args)
    self - self.select_index(args)
  end
  
end
