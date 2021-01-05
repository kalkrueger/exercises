#identify characters
  #replace characters that are not letters with a space
  #elimintate extra spaces

def cleanup(str)
  str.gsub(/[^a-z]/i,' ').squeeze(' ')
end

p cleanup("what's my +*& line") == 'what s my line'
