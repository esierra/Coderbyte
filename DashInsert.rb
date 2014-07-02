# Have the function DashInsert(num) insert dashes ('-') between each two odd numbers in num. 
# For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 

def DashInsert(num)

 num.to_s.gsub(/[13579]{2,}/){|x| x.split('').join("-")}
         
end