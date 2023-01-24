def is_multiple_of_3_or_5?(number)
    if number % 3 == 0 || number % 5 == 0
        return true
    else
        return false
    end
end

def sum_of_3_or_5_multiples?(number)
    final_sum = 0 

    if number == 0
        final_sum = 0
        return final_sum
    elsif number.class != Integer || number < 0
        final_sum = "Yo ! Je ne prends que les entiers naturels. TG."
        return final_sum
    else
        for current_number in 1..number
            if is_multiple_of_3_or_5?(current_number) == true
              final_sum = final_sum +=current_number
            end
          end
        return final_sum 
    end
end