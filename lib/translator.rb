require 'yaml'

def load_library(url)
  load_hash = YAML.load_file(url)
  load_hash[]
end

def get_japanese_emoticon
  load_library("./lib/emoticons.yml")
  # code goes here
end

def get_english_meaning
  # code goes here
end