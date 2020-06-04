#create a method that takes an array of numbers as an argument
def stock_picker(arr)
  #initalize a current answer variable to save answers to
  current_answer = 0
  #initalize starting and ending index variables
  first_num_index = 0
  second_num_index = 0

  #for each number in the array, subtract each subsequent number
  arr.each_with_index do |val, idx|
    #create new array that includes all numbers after current number being checked
    new_arr = arr.slice((idx+1)..(arr.length-1))
    new_arr.each_with_index do |num, i|
      #subtract subsequent numbers from initial number
      answer = num - val
      #if the answer is higher than the last answer, save answer and indexes of current numbers, else continue
      if answer > current_answer
        current_answer = answer
        first_num_index = idx
        second_num_index = idx + i + 1
      end
    end
  end

  #prints best day to buy and sell (days start at zero)
  puts "The best day to buy is day #{first_num_index}, and the best day to sell is day #{second_num_index}."
  #prints your profit!
  puts "Your profit will be $#{current_answer}"

end

stock_picker([17,3,6,9,15,8,6,1,10])