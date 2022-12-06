file_data = File.read("input2.txt");
input = file_data.split("");

for i in 0..input.length
  packet = []
  for j in i..i+13
    packet.push(input[j]);
  end
  if(packet.uniq.length === packet.length)
    puts i+14;
    break;
  end
end