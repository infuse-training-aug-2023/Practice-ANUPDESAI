def check_hash(hash)
	hash[543121] = "100"
	hash.each_key do |key|
		if not key.is_a?(Integer) or key.even?
				hash.delete(key)
		end
	end
	return hash
end
