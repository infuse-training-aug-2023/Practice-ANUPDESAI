def check_hash(hash)
	hash[543121] = "100"
	hash.each_key do |key|
		if key.is_a?(Integer)
			if key.even?
				hash.delete(key)
			end
		else
			hash.delete(key)
		end
	end
	return hash
end
