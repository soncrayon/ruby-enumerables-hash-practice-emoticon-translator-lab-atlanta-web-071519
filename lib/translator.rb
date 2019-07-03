require 'yaml'

def load_library(url)
  emoticons = YAML.load_file(url)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each { |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  }
  return emoticon_hash
end

def get_japanese_emoticon(url, emoticon)
  emoticon_hash = load_library(url)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that is not a known emoticon" 
  end
  return result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(url)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that is not a known emoticon" 
  end
  result
end