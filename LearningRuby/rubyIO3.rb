#!/usr/bin/env ruby

require 'fileutils'

my_dir = Dir["C:/Users/796412/Desktop/readings/chef script/*.pdf"]
my_dir.each do |filename1|
  name = File.basename(filename1, '.pdf')[0,4]
  #dest_folder = "C:/Users/796412/Desktop/readings/chef script1/"
  dest_folder="C:/Users/796412/Desktop/readings/chef script1/#{name}"
  puts name
  Dir.mkdir("C:/Users/796412/Desktop/readings/chef script1/#{name}") #if File::directory?( "C:/Users/796412/Desktop/readings/chef script1/#{name}")

  FileUtils.cp(filename1, dest_folder)
end