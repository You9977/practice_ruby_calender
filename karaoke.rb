class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    base = %w[C C# D D# E F F# G G# A A# B]
    mk_array = @melody.split(/(\w#?)/)  #@melodyを正規表現を用いて配列にする。

    mk_array.map do |n|
      if /(\w#?)/.match?(n)
        transpose_index = (base.find_index(n) + amount) % base.length
        base[transpose_index] 
      else
        n
      end
    end.join
  end
end

melody = "F# G# A# B"

karaoke = KaraokeMachine.new(melody)
print melody
puts ""
print karaoke.transpose(2)
puts ""