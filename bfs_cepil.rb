def readfile (file)
	file = File.open("input") 
	t = (file.first).to_i
	puts t
	
	list = Hash.new
	
	$i = 0;
	
	while $i < t do
		puts("Start read graph #{$i+1}");
		#list[$i] = Array.new;
		n = (file.first).to_i
		$j = 1;
		
		while $j <= n do
			line = file.first
			puts line;
			vertices = line.split;
			
			bbbb = Array.new;
			
			vertices.shift
			vertices.shift
			vertices.each_with_index { |i,index|
				
				bbbb[index] = i
				#list[$j] = i
				puts "to node #{$j} add node " + i
			}
			list["#$j"] = bbbb
			
			$j +=1;
		end
		
		puts "--------------------"
		
		$i +=1;
	end
	
	return list
end	
	
$list = readfile("input")

def bfs(fnode)
  queue = [fnode]
  visited = {fnode=>true}
	print "Graph"
  puts "\n"
  print "#{fnode} "
    while(!queue.empty?)
      node = queue.shift()
      $list[node].each do |child|
        if visited[child] != true then
           print "#{child} "
           queue.push(child)
           visited[child] = true
         end
      end
    end
	print "\n"
end

#readfile("input");


puts 'What node should be first?'
fnode = gets.chomp

bfs(fnode);
