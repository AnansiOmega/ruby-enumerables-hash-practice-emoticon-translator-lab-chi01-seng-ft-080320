require 'yaml'
require 'pry'


def load_library(file)
  library = YAML.load_file('lib/emoticons.yml')
  new_hash = {}
  library.each do |key,value|
    hash = {}
    hash[:english] = value[0]
    hash[:japanese] = value[1]  
    new_hash[key] = hash
  end
  new_hash
end



def get_japanese_emoticon(file,emote)
library = load_library(file)
  library.each do |k, v|
    if emote == v[:english]
    return v[:japanese]
      end
      end
  "Sorry, that emoticon was not found"
end


def get_english_meaning(,emote)
  library = YAML.load_file('lib/emoticons.yml')
  lib_hash = {}
  library.each do |key,value|
    hash = {}
    hash[:english] = value[0]
    hash[:japanese] = value[1]  
    lib_hash[key] = hash
  end
  lib_hash
lib_hash.each do |k, v|
if emote == v[:japanese]
  emote = k
else
#  print "Sorry, that emoticon was not found"
end
end
emote
end



#library.each_with_object({}) do |value, key|
#key[:english] = value[1][0]
#key[:japanese] = value[1][1]
