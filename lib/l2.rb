=begin

Copyright (c) 2022, Lesli Technologies, S. A.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

Lesli Ruby Messages - Message utilities for the Ruby console

Powered by https://www.lesli.tech
Building a better future, one line of code at a time.

@contact  <hello@lesli.tech>
@website  <https://www.lesli.tech>
@license  GPLv3 http://www.gnu.org/licenses/gpl-3.0.en.html
@author   The Lesli Development Team

// · ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~
// · 
=end

require "ruby_cowsay"

module L2

    # standard color palette for texts
    COLORS = { 
        default: '38', 
        yellow: '1;33',
        white: '1;37', 
        green: '32',  
        black: '30', 
        blue: '34', 
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
    WIDTH = `tput cols`.to_i rescue 1;


    def self.m *messages
        puts(messages.join("\n"))
    end


    def self.msg *messages
        separator_blank(2)
        puts(messages.join("\n"))
        separator_line
        separator_blank
    end


    def self.info *messages
        puts(separator_pretty(:blue))
        messages.each { |message| puts(pretty("INFO: #{ message }", :white, :blue)) }
        puts(separator_pretty(:blue))
    end


    def self.success *messages
        puts(separator_pretty(:green))
        messages.each { |message| puts(pretty("SUCCESS: #{ message }", :black, :green)) }
        puts(separator_pretty(:green))
    end


    def self.warning *messages
        puts(separator_pretty(:yellow))
        messages.each { |message| puts(pretty("WARNING: #{ message }", :black, :yellow)) }
        puts(separator_pretty(:yellow))
    end


    def self.danger *messages
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


    def self.alert *messages
        messages.each { |message| puts("\e[5m#{message}\e[0m") }
    end


    def self.deprecation message
        puts(separator_pretty(:red))
        puts(pretty("DEPRECATED METHOD: #{ caller[0] }, #{ message }", :white, :red))
        puts(separator_pretty(:red))
    end


    def self.list *messages
        messages.each { |message| puts(" - #{ message }" )}
        separator_blank
    end


    def self.table data
        
        return if Gem.win_platform?
        return unless data.size > 0

        if data.class.name == "ActiveRecord::Relation"
            data = data.to_a.map(&:serializable_hash) 
        end

        # get the available characters in terminal width
        terminal_width = `tput cols`.to_i

        # get the number of columns to print base on the data hash
        cols = data.first.keys.count + 1

        # get the available space for every column
        col_width = (terminal_width / cols) - 1

        # validate that we have minimum space to render the table
        return if col_width <= 0

        # separator for every column and row
        separator = ('| ' << ('- ' * (col_width / 2)))

        # add extra blank spaces to adjust the col_width only if col_width not a even number
        separator += (' ') if (col_width - separator.size).odd?
    
        # print data as table :)
        data.each_with_index do |row, index|

            # only for table header
            if index == 0 

                # print table titles
                puts '| ' << row.keys.map { |key| key.to_s.upcase.ljust(col_width) }.join('| ')

                # print header separators, only for visible columns
                puts separator * (cols - 1)

            end 

            # join hash values as a line and justify every value to print value
            # in its own column
            puts '| ' << row.values.map { |value| value.to_s.ljust(col_width) }.join('| ')

        end

    end

    def self.cow message

        # ids of the prettiest cows in the library
        pretty_cows = [46,33,32,31,29,27,21,10,5]

        # get a random cow id
        random_cows = rand(0..(pretty_cows.size - 1))

        br()

        # show simple text message
        puts Cow.new({ :cow => Cow.cows[pretty_cows[random_cows]] }).say(message)
    end


    # · Aliases


    def self.warn *messages
        warning(messages)
    end


    def self.error *messages
        danger(messages)
    end

    def self.br count=1
        separator_blank(count)
    end 

    def self.line count=8
        separator_line(count)
    end

    private

    def self.separator_blank count=1
        puts("\n" * count);
    end 


    def self.separator_line count=8
        puts('-·-     ' * count)
    end 


    def self.separator_pretty(bg_colour = :default)
        pretty("", :black, bg_colour)
    end


    def self.colorize(text, colour = :default, bg_colour = :default)
        colour_code = COLORS[colour]
        bg_colour_code = BG_COLORS[bg_colour]
        return "\e[#{bg_colour_code};#{colour_code}m#{text}\e[0m".squeeze(';')
    end
    

    def self.pretty(message, colour = :default, bg_colour = :default)

        width = WIDTH - message.length - 4
        width = 1 if width.negative?

        return colorize("\ \ #{ message } #{"\ " * width}", colour, bg_colour)
    end

end
