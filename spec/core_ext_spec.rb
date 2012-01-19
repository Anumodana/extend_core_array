require '../lib/extend_core_array/core_ext'

describe Array do

  before(:each) do
    @a = [1, 2, 3, 4, 5, 'cat', 'dog']
    @b = [1, 0, 'cat', 4, 6, 8, 'dog']
    @c = [0, 2, 4]
  end
  
  describe "#match_positions" do
    it "takes an array parameter and returns true for a match and false for a mismatch value at each position" do
      @a.match_positions(@b).should eq [true, false, false, true, false, false, true]
    end
  end
  
  describe "#select_indexes" do
    it "takes an array parameter and returns selected value that equals to [1, 3, 5]" do
      @a.select_indexes(@c).should eq [1, 3, 5]
    end
  end
  
  describe "#reverse_select_indexes" do
    it "takes an array parameter and returns value that equals to [2, 4, 'cat', 'dog']" do
      @a.reverse_select_indexes(@c).should eq [2, 4, "cat", "dog"]
    end
  end
  
end
