
module L2
    module Msg 
        def self.simple messages
            messages.each { |message| puts(message) }
        end

        def self.msg messages
            self.m(messages)
        end
    
        def self.info messages
            messages.each { |message| puts(Config.pretty("INFO: #{ message }", :blue)) }
        end

        def self.success messages
            messages.each { |message| puts(Config.pretty("SUCCESS: #{ message }", :green)) }
        end

        def self.warning messages
            messages.each { |message| puts(Config.pretty("WARNING: #{ message }", :yellow)) }
        end

        def self.danger messages
            messages.each { |message| puts(Config.pretty("ERROR: #{ message }", :red)) }
        end

        def self.alert messages
            messages.each { |message| puts("\e[5m#{message}\e[0m") }
        end
    
    end
end
