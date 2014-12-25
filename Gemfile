source 'https://rubygems.org'

gemspec

gem 'transproc', github: 'solnic/transproc', branch: 'master'

group :console do
  gem 'pry'
  gem 'pg', platforms: [:mri]
end

group :test do
  gem 'virtus'

  platforms :rbx do
    gem 'rubysl-bigdecimal', platforms: :rbx
    gem 'codeclimate-test-reporter', require: false
  end

  platforms :mri do
    gem 'mutant'
    gem 'mutant-rspec'
  end
end

group :sql do
  gem 'rom-sql', git: 'https://github.com/rom-rb/rom-sql.git', branch: 'master'
  gem 'sequel'
  gem 'jdbc-sqlite3', platforms: :jruby
  gem 'sqlite3', platforms: [:mri, :rbx]
end

group :benchmarks do
  gem 'activerecord', '4.2.0'
  gem 'benchmark-ips'
end
