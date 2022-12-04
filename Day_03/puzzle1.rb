file_data = File.read("input1.txt");
rucksacks = [];
item_type =  ('a'..'z').to_a + ('A'..'Z').to_a;
rucksacks = file_data.split(/\n/);
wrong_items = [];
priority = 0;
total_priorities = 0;


rucksacks.each do |rucksack|
  compartments=[];
  items = rucksack.split('');
  compartments[0] = items[0..items.length/2-1];
  compartments[1] = items[items.length/2..items.length];

  compartments[0].each do |item|
    if compartments[1].include?(item);
      wrong_items.push(item);
      break;
    end
  end
end

wrong_items.each do |item|
  priority = (item_type.index item ) + 1;
  total_priorities = total_priorities + priority;
end

puts total_priorities;