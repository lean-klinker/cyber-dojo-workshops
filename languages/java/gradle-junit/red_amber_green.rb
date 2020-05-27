lambda { |stdout,stderr,status|
    output = stdout + stderr
    pattern = /failed/
    if match = pattern.match(output)
      :red
    else
      :green
    end
  }