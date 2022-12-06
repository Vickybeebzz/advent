file_data = File.read("input1.txt");
input = file_data.split("");

for i in 0..input.length
  packet = [input[i],input[i+1],input[i+2],input[i+3]];
  if(packet.uniq.length === packet.length)
    puts i+4;
    break;
  end
end