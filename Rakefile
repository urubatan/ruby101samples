desc "Executes all .rb files to verify if they are correctly spelled"
task :runall do
  files  = Dir.glob("*.rb")
  failed = []
  files.each do |file|
    failed << file unless system("ruby #{file}")
  end
  puts "Files with problem: #{failed.join(',')}"
end
