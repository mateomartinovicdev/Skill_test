#Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

* 'abc' =>  ['ab', 'c_']
* 'abcdef' => ['ab', 'cd', 'ef']



def solution(str)
    str += "_" if str.length % 2 != 0
    part = str.scan(/.{2}/)
    print part
end

solution("asd")