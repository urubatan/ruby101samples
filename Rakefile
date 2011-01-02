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
desc "Merge all the markdown files and the source files to create the output/post.html file"
task :merge => :setup_bundler do
  require 'fileutils'
  FileUtils.rm_rf 'output'
  FileUtils.mkdir 'output'
  out_f    = File.new('output/post.html', 'w')
  in_files = Dir.glob("*.markdown")
  in_files.sort.each do |file|
    File.open(file).each do |line|
      cont, name = *(/<<(.*)>>/).match(line)
      if name
        source_file = File.open(name).readlines
        out_f << "<b>#{name}</b><br/>"
        out_f << <<__EOF__
<pre line="1" lang="ruby">
#{source_file}
</pre>
__EOF__
      else
        out_f << line
      end
    end
  end
end