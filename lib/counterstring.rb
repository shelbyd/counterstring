require "counterstring/version"

module Counterstring
  def self.new(*args)
    String.new(*args)
  end

  class String < Struct.new(:length)
    def to_s
      return '' if length.zero?

      return length.to_s if length == 1

      output = '1' + marker
      last_position_number = 1

      while output.size < length
        position_number = output.size + (last_position_number.to_s.size)
        if position_number.to_s.size > last_position_number.to_s.size
          position_number += 1
        end
        token = position_number.to_s + marker
        remaining_length = length - output.size
        output += token
        last_position_number = position_number
      end

      output[0,length]
    end

    private

    def marker
      '*'
    end
  end
end
