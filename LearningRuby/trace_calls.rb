#module TraceCalls
#def self.included(klass)
#klass.instance_methods(false).each do |existing_method|
#wrap(klass, existing_method)
#end
#def klass.method_added(method) # note: nested definition
#unless @trace_calls_internal
#@trace_calls_internal = true
#TraceCalls.wrap(self, method)
#@trace_calls_internal = false
#end
#end
#end
#def self.wrap(klass, method)
#klass.instance_eval do
#method_object = instance_method(method)
#define_method(method) do |*args, &block|
#puts "==> calling #{method} with #{args.inspect}"
#  result = method_object.bind(self).call(*args, &block)
#  puts "<== #{method} returned #{result.inspect}"
#  result
#  end
#  end
#  end
#  end