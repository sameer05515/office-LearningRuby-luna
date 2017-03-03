# Fibers are often used to generate values from infinite sequences on demand. Here’s a fiber
# that returns successive integers divisible by 2 and not divisible by 3:

class FiberExample1
  twos = Fiber.new do
    num = 2
    loop do
      Fiber.yield(num) unless num % 3 == 0
      num += 2
    end
  end
  20.times { print twos.resume, " " }
end

# Because fibers are just objects, you can pass them around, store them in variables, and so
# on. Fibers can be resumed only in the thread that created them.