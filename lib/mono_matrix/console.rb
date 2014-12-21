require 'thor'
require 'mono_matrix'

module MonoMatrix
  class Console < Thor
    desc "example FILE", "an example task"
    method_option :device, :aliases => "-d", :desc => "Set the serial device to use", :default => "/dev/ttyAMA0"
    def switch(output, input)
      m = MonoMatrix::Switcher.new options[:device]
      m.switch output, input
    end
  end
end
