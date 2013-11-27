require "rubygems"
require "open-uri"
require "uglifier"

compiled_js = ""

$ROOT = "#{File.expand_path(File.dirname(__FILE__))}"

Dir.glob("#{$ROOT}/js/source/*.js").each do |f|
  compiled_js += Uglifier.compile(File.read(f))  
end


File.open("#{$ROOT}/js/compiled.js", "w") { |file| file.write(compiled_js) }

p "Done."