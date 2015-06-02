###
    Prototype extensions for javascript strings 
    Author: Cody Kochmann

    To do list:
    [X] - contains
    [X] - remove_all
    [X] - word_count
    [X] - base64_encode
    [X] - base64_decode
    [ ] - find_all
    [ ] - count_sentences
    [ ] - longest_word
    [ ] - most_common_word
    [ ] - most_common_pattern
    [ ] - is_multi_line
    [ ] - find_lines_containing
    [ ] - spell_check
    [ ] - reading_level
    [ ] - estimate_type
###

String::contains = (search_str) -> # checks if a substring is in the string 
  if @indexOf(search_str) == -1
    return false
  true

String::remove_all = (target) -> # removes every instance of a string in a string
  if @indexOf(target) != -1
    @split(target).join ''
  return

String::word_count = -> # returns the word count of a string 
  i=0
  count = 0
  # filter everything out that isno a letter or a space
  letters = 'abcdefghijklmnopqrstuvwxyz '
  letters += letters.toUpperCase()
  tmp_array = @split('')
  for i of tmp_array
    if letters.indexOf(tmp_array[i]) == -1
      @split(tmp_array[i]).join ''
  # filter out empty spaces
  while @indexOf('  ') != -1
    @replace('  ').join ' '
  split = @split(' ')
  for i of split
    if split[i].length > 0 and split[i] != ' '
      count += 1
  count

String::base64_encode = () ->
  window.btoa unescape(encodeURIComponent(this))

String::base64_decode=()->
  decodeURIComponent escape(window.atob(this))
