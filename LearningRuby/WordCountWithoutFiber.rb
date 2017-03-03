class WordCountWithoutFiber
  counts = Hash.new(0)
  File.foreach("C:/rubyWorkspace/LearningRuby/files/bbbb.txt") do |line|
    line.scan(/\w+/) do |word|
      word = word.downcase
      counts[word] += 1
    end
  end
  counts.keys.sort.each {|k| print "#{k}:#{counts[k]}\n"}
end