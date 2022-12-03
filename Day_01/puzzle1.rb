file_data = File.read("input1.txt");
elves = [];

elves = file_data.split(/\n{2,}/);
total_calories = [];

data = [];
elf_calories = 0;
max_calories = 0;

elves.each do |counter|
  data = counter.split(" ");

  data.each do |calories|
    elf_calories = elf_calories + calories.to_i;
  end

  total_calories.push(elf_calories);
  elf_calories = 0;
end

total_calories.each do |total|
  if total > max_calories
    max_calories = total;
  end
end

puts max_calories;