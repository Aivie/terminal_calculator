def calculator
    puts "What type of calculator would you like to use?"
    puts "Type 1 for 4-function calculator, type 2 for temperature converter."
    selection = gets.chomp.to_i
    if selection == 1
        puts "You have selected the 4-function calculator."
        puts "Enter one number."
        num_one = gets.chomp.to_i
        puts "What function do you want to use?"
        function = gets.chomp
        puts "Enter another number."
        num_two = gets.chomp.to_i
            if function == "+" || function == "add" || function == "addition"
             answer_a = num_one+num_two
             puts "Your answer is" + answer_a.to_s
            elsif function == "-" || function == "subtract" || function == "minus" || function == "subtraction"
             answer_s = num_one-num_two
             puts "Your answer is " + answer_s.to_s
            elsif function == "*" || function == "multiply" || function == "times" || function == "multiplication"
             answer_m = num_one*num_two
             puts num_one.to_s + " " + function + " " + num_two.to_s + " " + answer_m.to_s
            elsif function == "/" || function == "divide" || function == "division"
                if num_two == 0
                    puts "Error: Divison by 0"
                else
                    answer_d = num_one/num_two
                    puts num_one + function + num_two + answer_d.to_s
                end
            else 
             puts "Error"
            end
        
    elsif selection == 2
        puts "You have selected the temperature converter."
        puts "Would you like to convert from Fahrenheit (Type 1), Celsius (Type 2), or Kelvin (Type 3)?"
        from_temperature = gets.chomp.to_i
        if from_temperature == 1
            puts "Would you like to convert to Celsius (Type 1), or Kelvin (Type 2)?"
            to_temperature_f = gets.chomp.to_i
                if to_temperature_f == 1
                    puts "Enter Fahrenheit"
                    fahrenheit_c_temp = gets.chomp.to_i
                    final_f_celsius = ((5/9)*(fahrenheit_c_temp)-32)
                    puts "In celsius, " + fahrenheit_c_temp.to_s + " degrees Fahrenheit, is " + final_f_celsius.to_s + " degrees."
                elsif to_temperature_f == 2
                    puts "Enter Fahrenheit"
                    fahrenheit_k_temp = gets.chomp.to_i
                    final_f_kelvin = ((5/9)*(fahrenheit_k_temp-32)+273)
                    puts "In kelvin, " + fahrenheit_k_temp.to_s + " degrees Fahrenheit, is " + final_f_kelvin.to_s + "."
                else 
                    puts "Invalid"
                end
                
        elsif from_temperature == 2
            puts "Would you like to convert to Fahrenheit (Type 1), or Kelvin (Type 2)?"
            to_temperature_c = gets.chomp.to_i
                puts "Enter Celsius"
                celsius_temp = gets.chomp.to_i
                    if to_temperature_c == 1
                        final_c_fahrenheit = ((9/5)*(celsius_temp + 32))
                        puts "In fahrenheit, " + celsius_temp.to_s + " degrees Fahrenheit, is " + final_c_fahrenheit.to_s + "."
                    elsif to_temperature_c == 2
                        final_c_kelvin = (celsius_temp + 273)
                        puts "In kelvin, " + celsius_temp.to_s + " degrees celsius, is " + final_c_kelvin.to_s + "."
                    else
                        puts "Invalid"
                    end
                    
        elsif from_temperature == 3
            puts "Would you like to convert to Fahrenheit (Type 1), or Celsius (Type 2)?"
            to_temperature_k = gets.chomp.to_i
                puts "Enter Kelvin temperature"
                kelvin_temp = gets.chomp.to_i
                if to_temperature_k == 1
                    final_k_fahrenheit = ((9/5)*(kelvin_temp - 273)+32)
                    puts "In fahrenheit, " + kelvin_temp.to_s + " Kelvin, is " + final_k_fahrenheit.to_s + "."
                elsif to_temperature_k == 2
                    final_k_celsius = (kelvin_temp - 273)
                    puts "In celsius, " + kelvin_temp.to_s + " Kelvin, is " + final_k_celsius.to_s + "."
                else
                    puts "Invalid"
                end
        else 
            puts "Invalid choice."
        end
    else
        puts "Invalid choice."
    end
end

calculator
