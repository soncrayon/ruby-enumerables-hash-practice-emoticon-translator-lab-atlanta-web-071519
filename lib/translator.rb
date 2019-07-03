require 'yaml'

def load_library(url)
  YAML.load_file(url)
end

def get_japanese_emoticon
  load_library()
  # code goes here
end

def get_english_meaning
  # code goes here
end