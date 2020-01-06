#!/usr/bin/env ruby

class String
    def red
      colorize(31)
    end
  
    def green
      colorize(32)
    end
  
    def yellow
      colorize(33)
    end
  
    def blue
      colorize(34)
    end
  
    def cyan
      colorize(36)
    end
  
    private
  
    def colorize(color_code)
      "\e[#{color_code}m#{self}\e[0m"
    end
end

class Print
    def print_logo
      line1_str = '88888888888 8888888  .d8888b.    88888888888    d8888  .d8888b.    88888888888  .d88888b.  88888888888'
      line2_str = "    888       888   d88P  Y88b       888       d88888 d88P  Y88b       888     d88P' 'Y88b 888        "
      line3_str = '    888       888   888    888       888      d88P888 888    888       888     888     888 888        '
      line4_str = '    888       888   888              888     d88P 888 888              888     888     888 88888888   '
      line5_str = '    888       888   888              888    d88P  888 888              888     888     888 888        '
      line6_str = '    888       888   888    888       888   d88P   888 888    888       888     888     888 888        '
      line7_str = '    888       888   Y88b  d88P       888  d8888888888 Y88b  d88P       888     Y88b. .d88P 888        '
      line8_str = "    888     8888888  'Y8888P'        888 d88P     888  'Y8888P'        888      'Y88888P'  88888888888"
  
      str_len = line1_str.length
  
      (0..str_len * 2 + 1).each do |i|
        system('clear') || system('cls')
        output_str1 = ' ' * (i > str_len ? i - str_len : 0) + line1_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str2 = ' ' * (i > str_len ? i - str_len : 0) + line2_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str3 = ' ' * (i > str_len ? i - str_len : 0) + line3_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str4 = ' ' * (i > str_len ? i - str_len : 0) + line4_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str5 = ' ' * (i > str_len ? i - str_len : 0) + line5_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str6 = ' ' * (i > str_len ? i - str_len : 0) + line6_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str7 = ' ' * (i > str_len ? i - str_len : 0) + line7_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
        output_str8 = ' ' * (i > str_len ? i - str_len : 0) + line8_str[str_len - (i > str_len ? str_len : i)..-(i > str_len ? i - str_len : 1)] + ' ' * (str_len - (i > str_len ? str_len : i))
  
        colorized_str1 = colorize_string(output_str1)
        colorized_str2 = colorize_string(output_str2)
        colorized_str3 = colorize_string(output_str3)
        colorized_str4 = colorize_string(output_str4)
        colorized_str5 = colorize_string(output_str5)
        colorized_str6 = colorize_string(output_str6)
        colorized_str7 = colorize_string(output_str7)
        colorized_str8 = colorize_string(output_str8)
  
        puts colorized_str1 + "\n" + colorized_str2 + "\n" + colorized_str3 + "\n" + colorized_str4 + "\n" + colorized_str5 + "\n" + colorized_str6 + "\n" + colorized_str7 + "\n" + colorized_str8
  
        i == str_len ? sleep(1) : sleep(0.01)
      end
  
      step = 4
      (1..str_len + 28).each do |i|
        system('clear') || system('cls')
        output_str1 = ' ' * conditional(str_len + 7 * step - i, str_len) + line1_str[conditional(str_len + 7 * step - i, str_len)..-1]
        output_str2 = ' ' * conditional(str_len + 6 * step - i, str_len) + line2_str[conditional(str_len + 6 * step - i, str_len)..-1]
        output_str3 = ' ' * conditional(str_len + 5 * step - i, str_len) + line3_str[conditional(str_len + 5 * step - i, str_len)..-1]
        output_str4 = ' ' * conditional(str_len + 4 * step - i, str_len) + line4_str[conditional(str_len + 4 * step - i, str_len)..-1]
        output_str5 = ' ' * conditional(str_len + 3 * step - i, str_len) + line5_str[conditional(str_len + 3 * step - i, str_len)..-1]
        output_str6 = ' ' * conditional(str_len + 2 * step - i, str_len) + line6_str[conditional(str_len + 2 * step - i, str_len)..-1]
        output_str7 = ' ' * conditional(str_len + step - i, str_len) + line7_str[conditional(str_len + step - i, str_len)..-1]
        output_str8 = ' ' * conditional(str_len - i, str_len) + line8_str[conditional(str_len - i, str_len)..-1]
  
        colorized_str1 = colorize_string(output_str1)
        colorized_str2 = colorize_string(output_str2)
        colorized_str3 = colorize_string(output_str3)
        colorized_str4 = colorize_string(output_str4)
        colorized_str5 = colorize_string(output_str5)
        colorized_str6 = colorize_string(output_str6)
        colorized_str7 = colorize_string(output_str7)
        colorized_str8 = colorize_string(output_str8)
  
        puts colorized_str1 + "\n" + colorized_str2 + "\n" + colorized_str3 + "\n" + colorized_str4 + "\n" + colorized_str5 + "\n" + colorized_str6 + "\n" + colorized_str7 + "\n" + colorized_str8
  
        sleep 0.005
      end
    end

    def print_animated(string, interval)
      string.each_char do |c|
        print c
        sleep interval
      end
    end

    def print_game_state(game_state)
      system('clear') || system('cls')
      puts '+--------------+'
      puts '|              |'
      puts '|   ' + '1'.cyan + '   ' + '2'.cyan + '   ' + '3'.cyan + '  |'
      puts '| ' + 'a'.cyan + " #{colorize_mark(game_state[0][0])} | #{colorize_mark(game_state[0][1])} | #{colorize_mark(game_state[0][2])}  |"
      puts '|  ----------- |'
      puts '| ' + 'b'.cyan + " #{colorize_mark(game_state[1][0])} | #{colorize_mark(game_state[1][1])} | #{colorize_mark(game_state[1][2])}  |"
      puts '|  ----------- |'
      puts '| ' + 'c'.cyan + " #{colorize_mark(game_state[2][0])} | #{colorize_mark(game_state[2][1])} | #{colorize_mark(game_state[2][2])}  |"
      puts '|              |'
      puts '+--------------+'
    end

    def print_error(error_message)
      # error_message = error_message.red
  
      (0...error_message.length).each do |i|
        system('clear') || system('cls')
  
        output_string = ' ' + '_' * (error_message.length + 6) + "\n"
        output_string += '/\\' + ' ' * (error_message.length + 5) + '\\' + "\n"
        output_string += '\\_|' + ' ' * (error_message.length + 5) + '|' + "\n"
        output_string += '  |  ' + error_message[0..i - error_message.length].red + ' ' * (error_message.length - 1 - i) + "   |\n"
        output_string += '  |' + ' ' * (error_message.length + 5) + '|' + "\n"
        output_string += '  |   ' + '_' * (error_message.length + 2) + '|_' + "\n"
        output_string += '   \\_/' + '_' * (error_message.length + 3) + '/' + "\n"
  
        puts output_string
        sleep 0.02
      end
    end
  
    private
  
    def conditional(number, ceil)
      return 0 if number.negative?
      return ceil if number > ceil
  
      number
    end
  
    def colorize_string(string)
      color_red_start = 0
      color_red_end = 29
  
      color_green_start = 33
      color_green_end = 63
  
      color_blue_start = 67
      color_blue_end = 101
  
      colorized_string = string[color_red_start..color_red_end].red
      colorized_string += string[color_red_end + 1..color_green_start - 1]
      colorized_string += string[color_green_start..color_green_end].green
      colorized_string += string[color_green_end + 1..color_blue_start - 1]
      colorized_string + string[color_blue_start..color_blue_end].blue
    end

    def colorize_mark(mark)
      mark = mark.red if mark == 'X'
      mark = mark.green if mark == 'O'
  
      mark
    end
end

print = Print.new

cursor_speed = 0.02
=begin
print.print_animated("\nPlayer one enter your name: ".yellow, cursor_speed)
player1 = gets.chomp
player1.strip!
=end
game_state = [[' ', 'X', ' '], [' ', 'O', ' '], [' ', 'X', ' ']]

# print.print_game_state(game_state)

print.print_error("I'm a dummy error message!")