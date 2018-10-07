module Met
  VERSION = `git describe 2>/dev/null || echo 0.0.0`.strip

  module Version
    MAJOR, MINOR, BUILD, *OTHER = Met::VERSION.split "."

    NUMBERS = [MAJOR, MINOR, BUILD, *OTHER]
  end
end

