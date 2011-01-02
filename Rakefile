desc "Internal task to setup bundler, user as dependency"
task :setup_bundler do
  require "rubygems"
  require "bundler/setup"
  require "maruku"
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
  FileUtils.mkdir_p 'output'
  out_f    = File.new('output/post.html', 'w')
  in_files = Dir.glob("*.markdown")
  in_files.sort.each do |file|
    in_lines = IO.readlines(file).to_s
    in_lines = Maruku.new(in_lines).to_html
    out_f << in_lines.gsub(/(\{\{[a-zA-Z0-9]+\.[a-zA-Z0-9]{2,5}\}\})/) do |f_name|
      <<_EOF_
<b>#{f_name[2..-3]}</b>
<pre line="1" lang="ruby">
#{IO.readlines(f_name[2..-3]).to_s}
</pre>
_EOF_
    end
  end
end
