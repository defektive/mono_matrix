
require 'serialport'

class MonoMatrix

  # end_bytes = ["\xD5","\x7B"]
  # channels = {
  #   "A" => [
  #     ["\x00", "\xFF"],
  #     ["\x01", "\xFE"],
  #     ["\x02", "\xFD"],
  #     ["\x03", "\xFC"]
  #   ],

  #   "B" => [
  #     ["\x04", "\xFB"],
  #     ["\x05", "\xFA"],
  #     ["\x06", "\xF9"],
  #     ["\x07", "\xF8"]
  #   ]
  # }

  def initialize(tty)
    # Instance variables
    @tty = tty
  end

  # def switch(channel, input)

    # A = 1 "\x00\xFF\xD5\x7B";
    # A = 2 "\x01\xFE\xD5\x7B";
    # A = 3 "\x02\xFD\xD5\x7B";
    # A = 4 "\x03\xFC\xD5\x7B";
    # B = 1 "\x04\xFB\xD5\x7B";
    # B = 2 "\x05\xFA\xD5\x7B";
    # B = 3 "\x06\xF9\xD5\x7B";
    # B = 4 "\x07\xF8\xD5\x7B";


    # bytes = channels[channel][input -1] + end_bytes if channels[channel] && channels[channel][input -1]

    # if bytes 
    #   puts channel +" to "+ input.to_s
    #   serialConnection = SerialPort.new @tty, 9600
    #   bytes.each {|byte| serialConnection.write byte}
    #   bytes.each {|byte| serialConnection.write byte}
    #   serialConnection.close
    # end
  # end
end
