class SplatAndAssignmenEtxample
  for i in ['fee', 'fi', 'fo', 'fum']
    print i, " "
  end
  for i in 1..3
    print i, " "
  end
  puts "\n##############################3\n"
  a,b = 1,22

  puts a.+b
  puts a+b
  puts a.+(b)
  #  for i in File.open("ordinal").find_all {|line| line =~ /d$/}
  #  print i.chomp, " "
  #  end

end