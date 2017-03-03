class ReplaceContent
  #///////////////////////
#  replace="10012334567"
#    filename = "C:/rubyWorkspace/LearningRuby/files/ReplaceFile1.xml"
#    outdata = File.read(filename).gsub(/<appId>\d+<\/appId>/, "<appId>#{replace}</appId>")
#    
#    File.open(filename, 'w') do |out|
#      out << outdata
#    end
  #//////////////////////  
  replace="key1=2000"
    filename = "C:/rubyWorkspace/LearningRuby/files/Test.properties"
    outdata = File.read(filename).gsub(/\bkey1=\b/, "#{replace}")
    
    File.open(filename, 'w') do |out|
      out << outdata
    end
end