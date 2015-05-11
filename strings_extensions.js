/*
    Prototype extensions for javascript strings 
    Author: Cody Kochmann

    To do list:
    [X] - contains
    [X] - remove_all
    [X] - word_count
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
*/

String.prototype.contains = function(search_str){/*
    checks if a substring is in the string */
    if(this.indexOf(search_str)===-1){
        return(false);
    }
    return(true);
};

String.prototype.remove_all = function(target){/* 
    removes every instance of a string in a string */
    if (this.indexOf(target) != -1){
        this.split(target).join("");
    }
};

String.prototype.word_count = function(){/*  
    returns the word count of a string */
    var count = 0;
    // filter everything out that isno a letter or a space
    var letters = "abcdefghijklmnopqrstuvwxyz ";
    letters += letters.toUpperCase();
    var tmp_array = this.split('');
    for (var i in tmp_array){
        if (letters.indexOf(tmp_array[i]) === -1){
            this.split(tmp_array[i]).join("");
        }
    }
    // filter out empty spaces
    while (this.indexOf("  ") !== -1){
        this.replace("  ").join(" ");
    }
    var split = this.split(" ")
    for (var i in split){
        if (split[i].length > 0 && split[i] != " "){
            count+=1;
        }
    }
    return(count);
};

