class Map
    def initialize
        @my_map = []
    end

    def set(key, value)
        this_pair = get(key)
        if !this_pair
            @my_map << [key, value]
        else
            @my_map.each do |p|
                p[1] = value
            end
        end
    end

    def get(key)
        @my_map.each do |p|
            return p.last if p.first == key
        end
        nil
    end

    def delete(key)
        @my_map.delete_if { |item| item.first == key }
    end

    def show
        @my_map.each do |p|
            puts "Key=>#{p.first}; Value=>#{p.last}"
        end
    end
end