proc count_lines {filename} {
    if {[catch {open $filename r} f]} {
        puts stderr "Error opening file: $filename\nError: $::errorInfo"
        return -1
    }
    set count 0
    while {[gets $f line] != -1} {
        incr count
    }
    close $f
    return $count
}

#Example usage
set filename "my_file.txt"
set line_count [count_lines $filename]
if {$line_count >= 0} {
    puts "Number of lines: $line_count"
} 