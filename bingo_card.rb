class Bingo
  def self.generate_card
    columns = (1..75).each_slice(15).map {|n| n.sample(5)}
    columns[2][2] =""
    table = ["BINGO".chars] + columns.transpose
    table.map { |row|
      row.map { |m| m.to_s.rjust(2)}.join("|")
    }
    .join("\n")
  end
end

puts Bingo.generate_card