require 'gliffygenerator.rb'

input_filename = '/input/org.yml'
if File.exist?(input_filename) then
  gliffy_generator = GliffyGenerator.new('/input/org.yml', 100, 100)
else
  gliffy_generator = GliffyGenerator.new('org.yml', 100, 100)
end
gliffy_generator.generate()
#gliffy_generator.dump()
