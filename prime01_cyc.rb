# Решение с помощью цикла в двух варинатах ("for" и ".each" )
# методом самого примитивного перебора делителей
puts ('Хотите узнать является ли число простым?')
puts ('Введите натуральное число:')
number=gets.to_i
def miss # Выполняется в случае неверного ввода
  puts 'Ошибка ввода!'
end

def check (num) # Собственно, сама проверка числа на "простоту"
  # for i in (2...num)
  #   if num % i == 0
  #     puts ('Введенное число не является простым')
  #     return
  #   end
  # end
  (2...num).each do |i| # Этот вариант мне показался более "рубивским"
    if num % i == 0
      puts ('Введенное число не является простым')
      return
    end
  end
  puts ('Введенное число является простым')
end

if number.is_a? Integer and number.to_i > 1 # Проверяет правильность ввода
  puts ('Проверим число ' + number.to_s)
  # Не придумал как проверять введенное число на "Float"
  # т.к. надо конвертировать полученную строку сразу в число,
  # если это возможно, по этому добавил вывод числа, чтоб было
  # понятно, какое именно число будет проверяться и что оно 
  # "округлилось", даже если было введено с точкой
  check (number)  
else
  miss
end