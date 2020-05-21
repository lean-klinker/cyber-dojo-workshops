lambda { |stdout,stderr,status|
    output = stdout + stderr
    return :red
  }