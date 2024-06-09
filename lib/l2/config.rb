

module L2 
    module Config 

        ICONS = {
            checkmark: "✓",
            bullet: "•",
            star: "★"
        }.freeze
    
        # standard color palette for texts
        COLORS = { 
            skyblue: '96',
            default: '38', 
            yellow: '1;33',
            white: '1;37', 
            green: '32',  
            black: '30', 
            blue: '36', 
            red: '31'
        }.freeze
    
        # standard color palette for backgrounds
        BG_COLORS = { 
            default: '0', 
            yellow: '103', 
            white: '107', 
            green: '42', 
            black: '40', 
            blue: '44',
            red: '41'
        }.freeze
    
    
        # calculate the console width
        # tputcols is not available on windows
        #WIDTH = `tput cols`.to_i rescue WIDTH = 1;
        WIDTH = begin
            term = ENV['TERM']
            term ? `tput cols`.to_i : 1
        rescue
            1
        end

        def self.colorize(text, colour = :default, bg_colour = :default)
            colour_code = COLORS[colour]
            bg_colour_code = BG_COLORS[bg_colour]
            return "\e[#{bg_colour_code};#{colour_code}m#{text}\e[0m".squeeze(';')
        end
        
    
        def self.pretty(message, colour = :default, bg_colour = :default)
            width = 1
    
            unless bg_colour == :default
                width = WIDTH - message.length - 4
                width = 1 if width.negative?
            end
    
            return colorize("\ \ #{ message } #{"\ " * width}", colour, bg_colour)
        end
    end 
end
