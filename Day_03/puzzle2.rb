file_data = File.read("input2.txt");
rucksacks = [];
item_type =  ('a'..'z').to_a + ('A'..'Z').to_a;
rucksacks = file_data.split(/\n/);
groups = rucksacks.each_slice(3).to_a;
badges = [];
priority = 0;
total_priorities = 0;

groups.each do |group|
  member_rucksacks = group.each.to_a;
  
  member_rucksacks[0].split("").each do |item|
    if((member_rucksacks[1].include? item) && (member_rucksacks[2].include? item))
      badges.push(item);
      break;
    end
  end
end

badges.each do |item|
  priority = (item_type.index item ) + 1;
  total_priorities = total_priorities + priority;
end

puts total_priorities;