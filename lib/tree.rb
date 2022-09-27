require 'pry'

class Tree
	attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

	def depth_first_traversal(node)
		result = []
		nodes_to_visit = [node]
	
		while nodes_to_visit.length > 0
			node = nodes_to_visit.shift
			result.push(node[:value])
			nodes_to_visit = node[:children] + nodes_to_visit
		end
	
		result
	end

	# def get_element_by_id(str)
	# 	result = []
	# 	nodes_to_visit = [self.root]
	
	# 	while nodes_to_visit.length > 0
	# 		node = nodes_to_visit.shift
	# 		if node[:id] == str
	# 			return node
	# 		else
	# 			result.push(node[:value])
	# 			nodes_to_visit = node[:children] + nodes_to_visit
	# 		end
	# 	end
	
	# 	nil
	# end

	def get_element_by_id(str)
		nodes_to_visit = [self.root]
	
		while nodes_to_visit.length > 0
			node = nodes_to_visit.shift
			if node[:id] == str
				return node
			else
				nodes_to_visit = nodes_to_visit + node[:children]
			end
		end
	
		nil
	end

end

# binding.pry