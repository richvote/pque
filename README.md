# Pque

100%　rubyで作ったプライオリティーキューです。
Priority Que for ruby.
ヒープソートを利用しています。
Implementing Heap tree on Array, child1 as i\*2 + 1, child2 as i\*2 + 2.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pque'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pque

## Usage
```
require 'pque'

pq = Pque.new # for descending order
pq.push(1)
pq.push(5)
pq.push(4)
pq.push(3)
pq.pop    #=> 5
pq.pop    #=> 4
pq.push(2)
pq.pop    #=> 3
pq.pop    #=> 2
pq.pop    #=> 1

pq = Pque.new(false) # for ascending order
falseのときダイクストラ法でよく使われる小さい順となります。

ウエイト付きのデータをキューに入れるには構造体をclassにして、
<=>演算子をウエイトを比較するように再定義して使ってください。

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pque. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

