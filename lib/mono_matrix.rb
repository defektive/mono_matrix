
require 'serialport'

class MonoMatrix

  def initialize(tty)
    # Instance variables
    @tty = tty
  end

  def switch(channel, input)

    # A = 1 "\x00\xFF\xD5\x7B";
    # A = 2 "\x01\xFE\xD5\x7B";
    # A = 3 "\x02\xFD\xD5\x7B";
    # A = 4 "\x03\xFC\xD5\x7B";
    # B = 1 "\x04\xFB\xD5\x7B";
    # B = 2 "\x05\xFA\xD5\x7B";
    # B = 3 "\x06\xF9\xD5\x7B";
    # B = 4 "\x07\xF8\xD5\x7B";

    end_bytes = ["\xD5","\x7B"]
    if channel == "A"
      case input
      when 1
        bytes = ["\x00", "\xFF"] + end_bytes
      when 2
        bytes = ["\x01", "\xFE"] + end_bytes
      when 3
        bytes = ["\x02", "\xFD"] + end_bytes
      when 4
        bytes = ["\x03", "\xFC"] + end_bytes
      end

    elsif channel == "B"
      case input
      when 1
        bytes = ["\x04", "\xFB"] + end_bytes
      when 2
        bytes = ["\x05", "\xFA"] + end_bytes
      when 3
        bytes = ["\x06", "\xF9"] + end_bytes
      when 4
        bytes = ["\x07", "\xF8"] + end_bytes
      end
    end
    puts channel +" to "+ input.to_s
    serialConnection = SerialPort.new @tty, 9600
    bytes.each {|byte| serialConnection.write byte}
    bytes.each {|byte| serialConnection.write byte}
    serialConnection.close
  end

end
