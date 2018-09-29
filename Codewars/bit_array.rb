require 'objspace'

# more than 23 length is worth it with boolean values memorywise, but it's slower :S
class BitArray
  def initialize
    @bits = 0
  end

  # set true at index
  def set_bit(index)
    bit = 1 << index
    @bits |= bit
  end

  # set false at index
  def unset_bit(index)
    bit = ~(1 << index)
    @bits &= bit
  end

  # true? at index
  def bit_set?(index)
    bit = 1 << index
    (@bits & bit) == bit
  end

  # set values from an array of booleans
  def from_array(array)
    array.each_with_index do |n, i|
      n ? set_bit(i) : unset_bit(i)
    end
    @bits
  end
end

# TESTS
arr_rand = Array.new(100) { true } # rand(2) == 1 }
print arr_rand
puts
puts 'Random Array memory size'
puts ObjectSpace.memsize_of(arr_rand)
puts 'Random Array Marshal dump size'
puts Marshal.dump(arr_rand).length
#puts Marshal.dump(arr_rand).each_byte {|x| print (sprintf "%#x ", x) }
puts
puts '--------------------------------'
bit_arr = BitArray.new.from_array(arr_rand)
puts 'Bit Array memory size'
puts ObjectSpace.memsize_of(bit_arr)
puts 'Bit Array Marshal dump size'
puts Marshal.dump(bit_arr).length
puts 'Bit array number'
puts bit_arr
puts bit_arr.to_s(2)
#puts Marshal.dump(bit_arr).each_byte {|x| print (sprintf "%#x ", x) }
