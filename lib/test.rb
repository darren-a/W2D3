require 'byebug'
require 'set'

def my_uniq(arr)
  # result = Set.new 
  #arr.uniq
  
  subarr = Subarr.new(arr)
  debugger
  subarr.my_uniq
  # arr.each do |i|
  #   result.add(i)
  # end 
  # result.to_a
end 

class Subarr < Array
  
  def initialize(arr)
    super(arr)
  end 
  
  def my_uniq
    dup = self.dup
    dup.uniq 
  end 
  
end 
  

def two_sum(arr)
  res = []
  
  i = 0
  while i < arr.size - 1
    
    j = i + 1
    while j < arr.size
      res << [i, j] if arr[i] + arr[j] == 0
      j += 1
    end 
    i += 1
  end
  res
end 


def my_transpose(matrix)
  trans = Array.new(matrix.length) {[]}
  
  i = 0
  while i < matrix.size
    
    j = 0
    while j < matrix.size
      trans[i] << matrix[j][i]
      j += 1
    end 
    i += 1
  end
  
  trans 
end 



def stock_picker(arr)
  return 0 if arr.empty?
  min_value = arr[0]
  profit = [arr[1] - arr[0], 0].max
  
  (1...arr.length).each do |i|
    current_profit = arr[i] - min_value
    profit = [current_profit, profit].max 
    min_value = [arr[i], min_value].min 
  end 
  profit 
end 


class Hanoi 
  attr_accessor :pillars 
  def initialize 
    @pillars = [[3, 2, 1], [], []]
  end 
  
  
  
  def valid_move?(num, pillar)
    if pillar.empty? || num < pillar[-1] 
      return true 
    end 
    false 
  end
  
end 

