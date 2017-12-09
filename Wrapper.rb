class Wrapper
  def wrap(word, columnNumber)
    if (word.length <= columnNumber)
        return word
    end
  newLine = "\n"
  blank = word[0..columnNumber].index(/\s/)
  if blank
    return word[0...blank] + newLine +
      wrap(word[blank+1..-1], columnNumber)
      
  else
   return word[0...columnNumber] + newLine +
      wrap(word[columnNumber..-1], columnNumber)
  end
end
  public :wrap
end

  
  puts "Enter the string"
  myString = gets.chomp
  
  puts "Enter the column number"
  columnNo = Integer(gets.chomp)
  
  myWrap = Wrapper.new
  puts myWrap.wrap(myString, columnNo)
