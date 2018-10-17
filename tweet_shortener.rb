def dictionary 
  {
"hello": "hi",
"to": "2", 
"two": "2",  
"too": "2",  
"for": "4",
"four": "4", 
"be": "b",
"you": "u",
"at": "@", 
"and": "&"
}
end

def word_substituter(str)
  new_words = []
  words = str.split(" ")
  words.each do |word|
    dictionary.each do |key, val|
    if key == word
      new_words.push(val)
    else
      new_words.push(word)
    end
    end
  end
  new_words.join(" ")
end
