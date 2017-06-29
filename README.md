# MutantsExample

Mutants test example

## How to

### How to run rspec tests?

For example for running rspec test for `mutants_example_spec.rb` execute:

```
bundle exec rspec spec/mutants_example_spec.rb
```

### How to run mutant tests?

For example for running mutants test for `mutants_example_spec.rb` execute:

```
bundle exec mutant --include lib --require mutants_example --use rspec MutantsExample::Smoking
```

## License

The project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

