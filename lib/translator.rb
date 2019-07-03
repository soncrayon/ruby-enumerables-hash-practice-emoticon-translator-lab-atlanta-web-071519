require 'yaml'

def load_library(url)
  load_hash = YAML.load_file(url)
  subject = data["Subject_list"]

require 'pp'
subject.each do |s|
  item = s.last
  if item.keys.first =~ /Skill/
    pp item.keys.inject([]) { |memo,x| item[x].map { |i| memo << i.flatten.unshift(x) } ; memo}
  else
    pp item.map { |k,v| ["", k, v] }
  end
end
end

def get_japanese_emoticon
  load_library("./lib/emoticons.yml")
  # code goes here
end

def get_english_meaning
  # code goes here
end