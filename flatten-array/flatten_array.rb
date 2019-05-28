class FlattenArray
	def self.flatten(array)
		array.flatten.tap { |a| a.delete(nil) }
	end
end

