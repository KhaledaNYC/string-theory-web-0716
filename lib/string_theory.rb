def sort_by_appearance(characters_to_sort, long_text)
  char_obj = {}
  characters_to_sort.split('').each do |letter|
  	if !long_text.include?(letter)
  		char_obj[letter] = 0
  	end
  end
  long_text.split('').each do |char|
    if characters_to_sort.include?(char)
      char_obj[char] ? char_obj[char] += 1 : char_obj[char] = 1
    end
  end
  char_obj.sort_by{|k,v| v}.reverse.map { |c| c[0] }.join
end
