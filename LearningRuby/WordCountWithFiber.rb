class WordCountWithFiber
  #  counts = Hash.new(0)
  #  File.foreach("C:/rubyWorkspace/LearningRuby/files/bbbb.txt") do |line|
  #    line.scan(/\w+/) do |word|
  #      word = word.downcase
  #      counts[word] += 1
  #    end
  #  end
  #  counts.keys.sort.each {|k| print "#{k}:#{counts[k]}\n"}

  words = Fiber.new do
    File.foreach("C:/rubyWorkspace/LearningRuby/files/bbbb.txt") do |line|
      line.scan(/\w+/) do |word|
        Fiber.yield word.downcase
      end
    end
    nil
  end

  counts = Hash.new(0)
  while word = words.resume
    counts[word] += 1
  end
  counts.keys.sort.each {|k| print "#{k}:#{counts[k]}\n"}
end