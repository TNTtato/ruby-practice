def rot13(secret_messages)
  secret_messages.map do |word|
    result = []
    word.split('').each do |letter|
      code_l = letter.ord
      code = (code_l - 97)%26 < 13 ? code_l + 13: code_l - 13
      r = code.chr
      r = letter unless ('a'..'z').include? letter
      result << r
    end
    result.join('')
  end
end