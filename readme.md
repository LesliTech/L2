<p align="center">
	<a href="https://www.lesli.dev" target="_blank">
		<img alt="Lesli Ruby Message logo" width="200px" src="./docs/l2-logo.svg" />
	</a>
</p>
<h3 align="center">Message utilities for the Ruby console</h3>

Version 0.5.2

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add l2

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install l2

Rails apps

    $ gem "L2", "~> 0.4.0"

## Usage


**Simple message:**

```ruby
L2.m("hola")
L2.m("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Simple message with dividing line:**

```ruby
L2.msg("hola")
L2.msg("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Informative message:**

```ruby
L2.info("hola")
L2.info("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Sucessful message:**

```ruby
L2.success("hola")
L2.success("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Simple message:**

```ruby
L2.warning("hola")
L2.warning("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Error message:**

```ruby
L2.danger("hola")
L2.danger("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Error with flashing message:**

```ruby
L2.fatal("hola")
L2.fatal("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Flashing message:**

```ruby
L2.alert("hola")
L2.alert("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Useful to give instructions in deprecated methods or code:**

```ruby
L2.deprecation("hola")
```


**Print a simple list:**

```ruby
L2.list("hola", "hello", "hallo", 1, [2], {"a":"b"})
```


**Show data as table:**

```ruby
L2.table([
    { español: "hola", english: "hello", deutsch: "hallo" },
    { español: "hola", english: "hello", deutsch: "hallo" },
    { español: "hola", english: "hello", deutsch: "hallo" }
])
```


**Display a cow message:**

```ruby
L2.cow("Hello little cow!")
```


### Development
------

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Contributing
------

Bug reports and pull requests are welcome on GitHub at https://github.com/LesliTech/l2.


### License  
------

Software developed in [Guatemala](http://visitguatemala.com/) distributed under the *General Public License v 3.0* you can read the full license [here](http://www.gnu.org/licenses/gpl-3.0.html)

<p align="center">
	<a href="https://www.lesli.tech" target="_blank">
		<img alt="LesliTech logo" width="150" src="https://cdn.lesli.tech/leslitech/brand/leslitech-logo.svg" />
	</a>
</p>
