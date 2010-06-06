require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "firefly-client"
    gem.summary = %Q{A client for the Firefly URL shortener server}
    gem.description = %Q{This is a client Gem for the Firefly URL shortener. It allows you Ruby application to call Firefly directly to shorten URLs.}
    gem.email = "ariejan@ariejan.net"
    gem.homepage = "http://github.com/ariejan/firefly-client"
    gem.authors = ["Ariejan de Vroom"]
		gem.add_dependency "httparty", ">= 0.5.2"
    gem.add_development_dependency "rspec", ">= 1.2.9"
		gem.add_development_dependency "fakeweb", ">= 1.2.8"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "firefly-client #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
