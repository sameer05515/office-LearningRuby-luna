#package "build-essential" do
#  action :install
#end
#
#user node[:redis][:user] do
#  action :create
#  system true
#  shell "/bin/false"
#end
#
#directory node[:redis][:data_dir] do
#  owner "redis"
#  mode "0755"
#  action :create
#end
#
#directory node[:redis][:dir] do
#  owner "root"
#  mode "0755"
#  action :create
#end
#
#remote_file "#{Chef::Config[:file_cache_path]}/redis.tar.gz" do
#  source node[:redis][:src_link]
#  action :create_if_missing
#end
#
#bash "compile_redis_source" do
#  cwd Chef::Config[:file_cache_path]
#  code <<-EOH
#    tar zxf redis.tar.gz
#    cd antirez-redis-*
#    make && make install
#  EOH
#  creates "/usr/local/bin/redis-server"
#end
#
#service "redis" do
#  provider Chef::Provider::Service::Upstart
#  subscribes :restart, resources(:bash => "compile_redis_source")
#  supports :restart => true, :start => true, :stop => true
#end
#
#template "redis.conf" do
#  path "#{node[:redis][:dir]}/redis.conf"
#  source "redis.conf.erb"
#  owner "root"
#  group "root"
#  mode "0644"
#  notifies :restart, resources(:service => "redis")
#end
#
#template "redis.upstart.conf" do
#  path "/etc/init/redis.conf"
#  source "redis.upstart.conf.erb"
#  owner "root"
#  group "root"
#  mode "0644"
#  notifies :restart, resources(:service => "redis")
#end
#
#directory node[:redis][:log_dir] do
#  mode 0755
#  owner node[:redis][:user]
#  action :create
#end
#
#
#service "redis" do
#  action [:enable, :start]
#end

#require 'spec_helper'
#
#describe Comment do
#  pending "add some examples to (or delete) #{__FILE__}"
#
#
#   it "should relate to comapny" do
#     Comment.reflect_on_association(:company).should_not be_nil
#   end
#
#end

require_relative 'trace_calls'

class Example
  def one(arg)
    puts "One called with #{arg}"
  end
end

ex1 = Example.new
ex1.one("Hello") # no tracing from this call

class Example
  include TraceCalls
  def two(arg1, arg2)
    arg1 + arg2
  end
end

ex1.one("Goodbye") # but we see tracing from these two
puts ex1.two(4, 5)
