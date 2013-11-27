require "rubygems"
require "open-uri"
require "uglifier"

compiled_js = ""

$ROOT = "#{File.expand_path(File.dirname(__FILE__))}"

Dir.glob("#{$ROOT}/js/source/model/*.js").each do |f|
  print "compiling: #{f}\n"
  compiled_js += Uglifier.new(:compress => { :join_vars => false, :evaluate => false } ).compile(File.read(f))
end

Dir.glob("#{$ROOT}/js/source/templates/*.js").each do |f|
  print "compiling: #{f}\n"
  compiled_js += Uglifier.new(:compress => { :join_vars => false, :evaluate => false } ).compile(File.read(f))
end

print "compiling: main.js\n"
compiled_js += Uglifier.new(:compress => { :join_vars => false, :evaluate => false } ).compile(File.read("#{$ROOT}/js/source/main.js"))


File.open("#{$ROOT}/js/compiled.js", "w") { |file| file.write(compiled_js) }

print "Done.\n"