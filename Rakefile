desc "Internal task to setup bundler, user as dependency"
task :setup_bundler do

end
desc "Executes all .rb files to verify if they are correctly spelled"
task :runall do
  files  = Dir.glob("*.rb")
  failed = []
  files.each do |file|
    failed << file unless system("ruby #{file}")
  end
  puts "Files with problem: #{failed.join(',')}"
end
desc "Merge all the markdown files and the source files"
task :merge => :setup_bundler do
  
end