
module L2 
    module List 

        def self.bullet *items
            items.each { |item| puts(" #{Config::ICONS[:bullet]} #{ item }" )}
        end
    
        def self.check *items
            items.each { |item| puts(" #{Config::ICONS[:checkmark]} #{ item }" )}
        end
    
        def self.star *items
            items.each { |item| puts(" #{Config::ICONS[:star]} #{ item }" )}
        end
    end
end 
