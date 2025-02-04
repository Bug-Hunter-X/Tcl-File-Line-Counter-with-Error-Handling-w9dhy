proc count_lines {filename} {
    set f [open $filename r]
    set count 0
    while {[gets $f line] != -1} {
        incr count
    }
    close $f
    return $count
}

# Example usage
set filename "my_file.txt"
set line_count [count_lines $filename]
puts "Number of lines: $line_count"