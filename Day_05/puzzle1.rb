
file_data = File.read("input1.txt");
input = file_data.split(/\n{2,}/);



def read_map (map)
  counter = 0;
  map_array = [];

  map.each do |row|
    characters= row.grapheme_clusters;

    groups = characters.each_slice(4).to_a;

    groups.each do |group|
      if (counter < 8)
      group.pop
      counter=counter+1;
      end
    end

    map_array.push(groups);
  end

  map_array.pop;
  map_array.map { |item| item.map{ |n| n.join("")}}
end

def fill_piles(map)
  box_piles = [[],[],[],[],[],[],[],[],[]];
  for j in 0..8 do
    for i in 0..7 do
      if(map[i][j][0]!= " ")
        box_piles[j].push(map[i][j]);
      end

    end
  end
  box_piles;
end

def parse_instructions(instructions)
  sentences = instructions.split(/\n/);
  sentences = sentences.map{|item| item.split(" ")}

  sentences.each do |item|
    item.delete("move")
    item.delete("from")
    item.delete("to")
  end;
end

map = input[0].split(/\n/);
map = read_map(map);

instructions = parse_instructions(input[1]);

box_piles = fill_piles(map);

box_piles = box_piles.map {|pile| pile.reverse()}

instructions.each do |instruction|
  for i in 0..instruction[0].to_i-1 do
    box_piles[(instruction[2].to_i-1)].push(box_piles[(instruction[1].to_i-1)][-1]);
    box_piles[(instruction[1].to_i-1)].pop
  
    end
end

box_piles.each do |pile|
  printf pile[-1];
end
