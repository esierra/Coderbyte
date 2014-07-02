# Have the function MeanMode(arr) take the array of numbers stored in arr and return 1 if the mode equals the mean,
#  0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). 
#  The array will not be empty, will only contain positive integers, and will not contain more than one mode. 

def MeanMode(arr)

  arr.sort!
  mean=arr.inject(:+).div(arr.length)
  mode=Hash.new
  arr.each{|x| mode[x]=mode[x].to_i+1}
  mode.sort_by{|x,y| x}
mode_max=mode.max_by{|x,y| y}
 return 0 if mode_max[0]!=mean
  return 1
end