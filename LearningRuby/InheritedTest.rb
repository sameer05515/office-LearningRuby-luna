class Top
  def self.inherited(sub)
    puts "New subclass: #{sub}"
  end
end

class Middle < Top
end

class Bottom < Middle
end

#produces:
#New subclass: Middle
#New subclass: Bottom