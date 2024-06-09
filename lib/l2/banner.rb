
module L2 
    module Banner 
        def self.title title 
            width = WIDTH - title.length - 4
            self.line(WIDTH/8)
            puts title.rjust(width / 2)
            self.line(WIDTH/8)
        end 

        def self.infob *messages
            puts(separator_pretty(:blue))
            messages.each { |message| puts(pretty("INFO: #{ message }", :white, :blue)) }
            puts(separator_pretty(:blue))
        end
    
        def self.successb *messages
            puts(separator_pretty(:green))
            messages.each { |message| puts(pretty("SUCCESS: #{ message }", :black, :green)) }
            puts(separator_pretty(:green))
        end
    
        def self.warningb *messages
            puts(separator_pretty(:yellow))
            messages.each { |message| puts(pretty("WARNING: #{ message }", :black, :yellow)) }
            puts(separator_pretty(:yellow))
        end
    
        def self.dangerb *messages
            puts(separator_pretty(:red))
            messages.each { |message| puts(pretty("ERROR: #{ message }", :yellow, :red)) }
            puts(pretty("PATH: #{ caller[0] }", :yellow, :red))
            puts(separator_pretty(:red))
        end
    
        def self.fatal *messages
            puts(separator_pretty(:red))
            messages.each { |message| puts("\e[5m#{pretty(message, :white, :red)}\e[0m") }
            puts(pretty("PATH: #{ caller[0] }", :white, :red))
            puts(separator_pretty(:red))
        end

        
        def self.deprecation message
            puts(separator_pretty(:red))
            puts(pretty("DEPRECATED METHOD: #{ caller[0] }, #{ message }", :white, :red))
            puts(separator_pretty(:red))
        end
    end
end 
