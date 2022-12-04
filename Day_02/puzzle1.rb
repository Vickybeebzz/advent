file_data = File.read("input1.txt");
rounds = [];
score = 0;

rounds = file_data.split(/\n/);

rounds.each do |round|
  round_moves = round.split;

  case round_moves[0]
  when 'A'
    case round_moves[1]
    when 'X'
      score = score + 1 + 3
    when 'Y'
      score = score + 2 + 6
    when 'Z'
      score = score + 3 + 0
    end

  when 'B'
    case round_moves[1]
    when 'X'
      score = score + 1 + 0
    when 'Y'
      score = score + 2 + 3
    when 'Z'
      score = score + 3 + 6
    end

  when 'C'
    case round_moves[1]
    when 'X'
      score = score + 1 + 6
    when 'Y'
      score = score + 2 + 0
    when 'Z'
      score = score + 3 + 3
    end
  end
end

puts score;