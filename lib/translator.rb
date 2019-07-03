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
  emoticon_hash
end

def get_japanese_emoticon
  load_library("./lib/emoticons.yml")
  # code goes here
end

def get_english_meaning
  # code goes here
end