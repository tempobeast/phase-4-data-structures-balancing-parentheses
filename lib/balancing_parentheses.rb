require_relative './stack'

def balancing_parentheses(string)

    stack = Stack.new
    @open = []
    @closed = []
    @additional = 0
    string.chars.each do |char|
        if char == ")" 
            @open.push(char)
        else
            @closed.push(char)
        end
    end
        if string.chars[0] == ")" && string.chars[string.chars.length - 1] == "("
            @additional = 2
        else nil
        end
    val = @open.size - @closed.size
    val.abs + @additional
end