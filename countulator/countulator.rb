class Countulator
  def self.countulate(string)
    characters = string.chars.chunk { |c| c }.map { |n, a| a.join  }
    characters_with_counts = characters.each { |char| char << char.length.to_s unless char.length == 1}
    characters_with_counts.map { |char_with_count| char_with_count[-2..-1] || char_with_count }.join
  end
end
