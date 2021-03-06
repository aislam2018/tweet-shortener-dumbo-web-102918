require "pry"
def dictionary 
 dictionary = {
"hello"=> "hi",
"to"=> "2", 
"two"=> "2",  
"too"=> "2",  
"for"=> "4",
"four"=> "4", 
"be"=> "b",
"you"=> "u",
"at"=> "@", 
"and"=> "&"
}
end

def word_substituter(str)

  words = str.split(" ")

  words.map do |word|

   if dictionary.keys.include?(word.downcase)

      word = dictionary[word.downcase]
       
    else
      word = word
    end
  end.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    return word_substituter(str)
  else
    return str
  end
end 

def shortened_tweet_truncator(str)
  new_str = word_substituter(str)
  if new_str.length > 140
   return new_str.slice(0, 137) + "..."
 else 
   return new_str
 end
 end
  
