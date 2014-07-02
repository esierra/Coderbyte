# Have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" 
# if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. 
# If the sequence doesn't follow either pattern return -1. 
# An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence,
# each term after the first is multiplied by some constant or common ratio. 
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. 
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements.


def ArithGeo(arr)

   isGeo, isArith = true, true
 arith_diff, geo_diff=arr[1]-arr[0], arr[1].div(arr[0])
  
   arr.each_with_index{|x,index|
     break if index==arr.length-1
     isArith=false if arr[index] + arith_diff!=arr[index+1]
    isGeo=false if arr[index] * geo_diff!=arr[index+1]
    }
  
  
 return "Arithmetic" if isArith
  return "Geometric" if isGeo
   return -1
         
end