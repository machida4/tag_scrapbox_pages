require_relative 'scrapbox/exportfile'

file_name = ARGV[0]
tag_name = ARGV[1]

file = File.new(ARGV[0])
exportfile = Scrapbox::Exportfile.new(file)
file.close()

exportfile.tag_all(tag_name)

new_file_name = "#{File.basename(file_name, ".*")}_tagged.json"
File.open(new_file_name, "w") do |file|
  exportfile.write(file)
end
