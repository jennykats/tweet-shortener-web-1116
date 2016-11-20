# Write your code here.
def word_substituter (string)
newsent = []
  words = string.split(" ")
    words.each do |word|
      if word == "hello"
        newsent.push("hi")
      elsif word == "to" || word == "two" || word == "too"
        newsent.push("2")
      elsif word == "four" || word == "for" || word == "For"
        newsent.push("4")
      elsif word == "be"
        newsent.push("b")
      elsif word == "you"
        newsent.push("u")
      elsif word == "at"
        newsent.push("@")
      elsif word == "and"
        newsent.push("&")
    else
      newsent.push(word)
    end
  end
  return newsent.join(" ")
end


def bulk_tweet_shortener (tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator (tweet)
  if tweet.length < 140
    return tweet
  elsif word_substituter(tweet).length > 140
    return "#{tweet[0..136]}..."
  end
end
