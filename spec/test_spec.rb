require 'test'

describe "my_uniq" do
  it "should return empty array" do 
    expect(my_uniq([])).to eq([])
  end 
  
  it "should return unique values in order" do
    array = (1..100).to_a + (1..100).to_a + (1..100).to_a
    array.shuffle!
    expect(my_uniq(array)).to eq(array.uniq)
  end
  
  let(:arr) { [1, 2, 3] }
  it "should not call the array's built-in uniq method" do
    expect(arr).to_not receive(:uniq)
    my_uniq(arr)
  end

end


describe "two_sum" do
  it "should return empty array when input is empty" do 
    expect(two_sum([])).to eq([])
  end 
  
  it "should return indices in order" do
    array = [-1, 0, 2, -2, 1]
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end 
  
  it "should return empty array with non-empty input" do
    array = [-3, 0, 2, -4, 1]
    expect(two_sum(array)).to eq([])
  end 
  
end

describe "my_transpose" do
  it "should return empty array when input is empty" do 
    expect(my_transpose([])).to eq([])
  end 
  
  it "should return a transposed matrix" do 
    expect(my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])).to eq([ 
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]])
  end 
  
end

describe "stock_picker" do 
  it "should return 0 if empty array" do 
    expect(stock_picker([])).to eq(0)
  end 
  
  it "should return largest profit" do
    a = [5, 3, 7, 1, 4, 6]
    expect(stock_picker(a)).to eq(5)
  end
  
  it "should return 0 if non-empty array and no profitable trade" do
    a = [50, 45, 7, 6, 4, 3]
    expect(stock_picker(a)).to eq(0)
  end 
end



describe "towers_of_hanoi" do 
  subject(:towers) { Hanoi.new }
  
  it "should initialize tower arrays" do
    expect(towers.pillars).to eq([ [3, 2, 1], [], [] ])
  end
  
  it "should validate a move" do
    expect(towers.valid_move?(1, [])).to eq(true)
  end 
  
  it "should accept a move" do
    move = [1, 3]
    expect(towers.move(move)).to eq(true)
  end
  
  it "should finish the move" do
    move = [1, 3]
    towers.move(move)
    expect(towers.pillars).to eq([ [2, 1], [], [3] ])
  end
  
  
end 
