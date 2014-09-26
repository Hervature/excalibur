require 'socket'

module Rubarb
  class ExcaliburSocket < TCPSocket

    def write_string str
      self.syswrite str + EOL
    end

    def write_int int
      self.write_string int.to_s
    end

    def read_string
      str = self.gets(EOL)

      until str
        str = self.gets(EOL)
        sleep 0.1
      end

      str.chop
    end

    def read_int
      read_string.to_i
    end

  end
end