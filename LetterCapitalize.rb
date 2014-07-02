# Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word.
#  Words will be separated by only one space. 

def LetterCapitalize(str)
  arr=str.split
  arr.each{|x| x.capitalize!}
  arr.each{|x| x.concat(" ")}
  arr.to_s
  
         
end