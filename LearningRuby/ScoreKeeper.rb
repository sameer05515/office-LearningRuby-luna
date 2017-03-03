class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
#    puts "Before adding score #{score} total_socre #{@total_score} count #{@count}"
    @total_score += score
    @count += 1
    puts "Now after adding score #{score} total_socre #{@total_score} count #{@count}"
    puts "################################################################################"
    self
  end

  def average
    fail "No scores" if @count.zero?
    Float(@total_score) / @count
  end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 40 << 50 << 60 << 70
puts "Average = #{scores.average}"