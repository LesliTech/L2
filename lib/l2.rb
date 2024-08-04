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

require "L2/config"
require "L2/table"
require "L2/space"
require "L2/list"
require "L2/msg"


# ·
module L2

    def self.m *messages
        L2::Msg.simple(messages)
    end

    def self.msg *messages
        self.br
        L2::Msg.simple(messages)
        self.line
    end

    def self.info *messages
        L2::Msg.info(messages)
    end

    def self.success *messages
        L2::Msg.success(messages)
    end

    def self.warning *messages
        L2::Msg.warning(messages)
    end

    def self.danger *messages
        L2::Msg.danger(messages)
    end

    def self.alert *messages
        L2::Msg.alert(messages)
    end

    def self.warn *messages
        warning(messages)
    end

    def self.error *messages
        L2::Msg.danger(messages)
    end


    def self.list *items
        L2::List.bullet(items)
    end

    def self.list_check *items
        L2::List.check(items)
    end

    def self.list_star *items
        L2::List.star(items)
    end


    def self.table data
        L2::Table.simple(data)
    end

    def self.br count=1
        L2::Space.br(count)
    end 

    def self.line count=8
        L2::Space.line(count)
    end

    def self.color color
        L2::Space.color(count)
    end


    def self.deprecation message
    end
end
