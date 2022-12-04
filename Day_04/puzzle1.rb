file_data = File.read("input1.txt");
pairs = file_data.split(/\n/);
counter = 0;

pairs.each do |pair|
  elves = pair.split(",");
  zone1 = elves[0].split("-");
  area1 = (zone1[0].to_i..zone1[1].to_i).to_a;

  zone2 = elves[1].split("-");
  area2 = (zone2[0].to_i..zone2[1].to_i).to_a;

  if((area1-area2).empty? || (area2-area1).empty?)
    counter = counter+1;
  end
end

puts counter;