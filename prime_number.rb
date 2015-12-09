class Prime
  def generate_prime max
    @primes = [] 
    i = 2
    while @primes.size < max do
      @primes << i if is_prime?(i)
      i += 1
    end
    @primes
    multiply_prime(@primes)
  end

  def is_prime?(n)
    if n < 2
      return false
    end
    for i in 2..(Math.sqrt(n))
     if (n % i) == 0
      return false
     end
    end
    true
  end

 def multiply_prime(prime)
  @primes.each {|row| print "%3d%s"  % [(row),row >=  2 ? " | " : ""]}
  puts "\n"
  @primes.each { |row| print row; @primes.each { |col| print "%3d%s" % [(row*col), row >= 2 ? " | " : ""] }
  puts "\n"}
 end

end

# To make sure is_prime? is generating prime numbers
p prime1 = Prime.new.is_prime?(999)
p prime2 = Prime.new.is_prime?(1)
p prime3 = Prime.new.is_prime?(11)
p prime4 = Prime.new.is_prime?(8)
p = Prime.new.generate_prime 10
