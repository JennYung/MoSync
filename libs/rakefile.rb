BD = '..'
require "#{BD}/build_rules/host.rb"
require "#{BD}/build_rules/defaults.rb"

SUBDIRS = ["MAStd", "MAUtil", "MTXml", "MAFS", "MAUI", "MATest", "MAP"] #, "MinUI"

if(Rake.application.top_level_tasks[0] == "pipe") then
	RAKEFILES = ["rakefile.pipe.rb"]
	require "#{BD}/build_rules/subdirs.rb"
	(task :default).invoke
	exit(0)
end

if ( HOST == "linux" )
	RAKEFILES = ["rakefile.pipe.rb"]
else
	RAKEFILES = ["rakefile.pipe.rb"]#, "rakefile.native.rb"]
end


require "#{BD}/build_rules/subdirs.rb"
