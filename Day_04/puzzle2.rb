file_data = File.read("input2.txt");
pairs = file_data.split(/\n/);
counter = 0;

pairs.each do |pair|
  elves = pair.split(",");
  zone1 = elves[0].split("-");
  area1 = (zone1[0].to_i..zone1[1].to_i).to_a;

  zone2 = elves[1].split("-");
  area2 = (zone2[0].to_i..zone2[1].to_i).to_a;

  area1.each do |zone|
    if(area2.include?(zone))
      counter = counter + 1;
      break;
    end
  end
end

puts counter;