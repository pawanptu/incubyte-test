class StringCalculator
    def self.add(numbers)
      #For empty input
      return 0 if numbers.empty?

      # For single number
      return numbers.to_i if numbers.to_i.to_s == numbers
  
      # delimiter of comma and new line
      delimiter = /,|\n/

      # Checking for delimiter
      if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = Regexp.escape(parts[0][2])
        numbers = parts[1]
      end

      # Split the string into numbers array
      num_list = numbers.split(/#{delimiter}/).map(&:to_i)
      negatives = num_list.select { |n| n < 0 }
      raise "negative numbers not allowed: #{negatives.join(',')}" unless negatives.empty?
  
      # Return sum
      num_list.sum
    end
end
  