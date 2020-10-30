def number_range(num1, num2)
  if num1 + num2 > 26
    return num1 + num2 - 26
  else 
    return num1 + num2
  end
end

def caesar_cipher(msg ,ky)
  big_letters = {"A" => 1, "B" => 2  ,"C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J"=>10, "K" => 11, "L"=>12, 
    "M"=>13,"N"=>14,"O"=>15,"P"=>16,"Q"=>17,"R"=>18,"S"=>19,"T"=>20,"U"=>21,"V"=>22 ,"W"=>23,"X"=>24,"Y"=>25,"Z"=>26}
  letters = msg.split("")
  finalMessage = ""
  letters.each { |letter|
    if letter == " " || big_letters[letter.upcase].nil?
      finalMessage += letter
    elsif letter == letter.upcase
      finalMessage += big_letters.key(number_range(big_letters[letter], ky))
    else letter == letter.downcase
      finalMessage += big_letters.key(number_range(big_letters[letter.upcase], ky)).downcase
    end
  }
  return finalMessage
end

puts "please input message to be encrypted: "
message = gets.chomp
puts "please inpute the shift factor: "
en_key = Integer(gets.chomp)

puts caesar_cipher(message, en_key)