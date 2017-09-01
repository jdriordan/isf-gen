require "bundler/setup"
require "frinkiac"


search_phrase   = ARGV[0]
replace_phrase  = ARGV[1]

frame = Frinkiac::Screencap.search(search_phrase)[0]
puts frame.caption
new_caption = frame.caption.gsub(search_phrase,replace_phrase)
puts new_caption
puts frame.meme_url(new_caption)
