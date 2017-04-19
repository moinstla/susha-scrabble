class String
  define_method(:scrabble) do
    one_points = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two_points = ["d", "g"]
    three_points = ["b", "c", "m", "p"]
    four_points = ["f", "h", "v", "w", "y"]
    five_points = ["k"]
    eight_points = ["j", "x"]
    ten_points = ["q", "z"]
    points_array = []
    split_letters = self.split("")
    split_letters.each() do |letter|
      if ten_points.include?(letter)
        point = 10
      elsif eight_points.include?(letter)
        point = 8
      elsif five_points.include?(letter)
        point = 5
      elsif four_points.include?(letter)
        point = 4
      elsif three_points.include?(letter)
        point = 3
      elsif two_points.include?(letter)
        point = 2
      else one_points.include?(letter)
        point = 1
      end
      points_array.push(point)
    end
    score=0
    points_array.each() do |point|
      score = score.+(point)
    end
    score
  end
end
