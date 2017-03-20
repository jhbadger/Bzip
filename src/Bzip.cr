require "./Bzip/*"

module Bzip
  class Reader
    def initialize(filename)
      io = IO::Memory.new
      Process.run("bzcat", args: [filename], output: io)
      @lines = [""]
      @lines = io.to_s.split("\n")
    end
    def each_line
      @lines.each do |line|
        yield line
      end
    end
  end
end
