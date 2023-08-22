class HashT
    attr_reader :hash
    def initialize
        @hash = Hash.new
    end 

    def add(key,value)
        @hash[key] = value
    end

    def delete_keys_non_int
        @hash.delete_if {  |key,value|  (key.is_a? Integer) ? false : true }
    end

    def delete_keys_odd_int
        @hash.delete_if {  |key,value|  (key % 2 == 0 ) ? false : true }
    end

end