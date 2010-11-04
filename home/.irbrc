require 'irb/completion'

# History
#require 'irb/ext/save-history'  #wirble does history
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Wirble is a plugin to colorize your irb, it's installed from a gem (gem install -y wirble)
require 'rubygems'
begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

ARGV.concat ["--readline", "--prompt-mode", "simple"]

# autoindent of code while typing it
IRB.conf[:AUTO_INDENT]=true

# use HIRB if available and in Rails
if Object.const_defined?'Rails'
  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError => err
    warn "No Hirb: #{err}"
  end
end

# Easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

# copy a string to the clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end
