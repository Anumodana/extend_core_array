Array.class_eval do
  
  def match_positions(arg)
    self.zip(arg).map { |x,y| x == y }
  end
    
  def select_indexes(*args)
    tmp = []
    args.flatten.each {|a| tmp << self.at(a) }
    tmp
  end
  
  def reverse_select_indexes(*args)
    self - self.select_indexes(args)
  end
  
end
