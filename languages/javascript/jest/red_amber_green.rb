lambda { |stdout,stderr,status|
    output = stdout + stderr
    pattern = /failed/
    if match = pattern.match(output)
      match[3] == '0' ? :green : :red
    else
      :amber
    end
  }