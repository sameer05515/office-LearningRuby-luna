class ParseHtml
  require 'open-uri'
#  page = open('http://pragprog.com/titles/ruby3/programming-ruby-1-9').read
#  page = open('http://www.juliandunn.net/2013/03/04/autoscaling-builds-with-jenkins-ec2-plugin-and-chef/').read
  page = open('http://www.egeek.me/2015/05/10/jenkins-matrix-job-with-conditions/').read
  if page =~ %r{<title>(.*?)</title>}m
  puts "Title is #{$1.inspect}"
  end
end