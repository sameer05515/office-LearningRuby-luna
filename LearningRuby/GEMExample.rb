#      RubyGems is a standardized packaging and installation framework for Ruby libraries and
#      applications. RubyGems makes it easy to locate, install, upgrade, and uninstall Ruby packages.
#
#      Before RubyGems came along, installing a new library involved searching the Web, downloading
#      a package, and attempting to install it—only to find that its dependencies hadn’t
#      been met. If the library you want is packaged using RubyGems, however, you can now
#      simply ask RubyGems to install it (and all its dependencies). Everything is done for you.


#    no such file to load -- builder error
#    
#    C:/CUSTOM INSTALLATIONS/Ruby21-x64/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- builder (LoadError)
#      from C:/CUSTOM INSTALLATIONS/Ruby21-x64/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
#      from C:/rubyWorkspace/LearningRuby/GEMExample.rb:2:in `<class:GEMExample>'
#      from C:/rubyWorkspace/LearningRuby/GEMExample.rb:1:in `<main>'
#      
#    Solution :-- Use command below
#    
#    gem install builder
#    
#    To check whether "builder" gem is installed on local machine or not
#    
#    gem list builder

class GEMExample
  require 'builder'
  xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)
  xml.person(type: "programmer") do
    xml.name do
      xml.first "Dave"
    end
    xml.location "Texas"
    xml.preference("ruby")
  end
end