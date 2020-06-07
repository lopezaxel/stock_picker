# stock_picker.rb

require "pry"

def stock_picker(stock_list)
  min_day = 0
  max_day = 0
  stock_pair = max_day - min_day

  stock_list.each do |min_num|
    min_num_index = stock_list.index(min_num)
    list_after_num = stock_list.slice(min_num_index, stock_list.length)

    list_after_num.each do |max_num|
      num_pair = max_num - min_num
      
      if num_pair > stock_pair
        min_day = min_num_index
        max_day = stock_list.index(max_num)
        stock_pair = num_pair
      end
    end
  end

  stock_pair = [min_day, max_day]

end

stock_list = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(stock_list)