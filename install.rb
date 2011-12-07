require 'fileutils'


Link = lambda do |target, new|
  FileUtils.ln_s File.join(File.expand_path(File.dirname(__FILE__)), target), File.join(File.expand_path('~'), new) rescue puts "~/#{new} exists."
end


Link['init.el', '.emacs.d/init.el']
Link['eskim', '.emacs.d/eskim']

