# Subclassing subclasses

```sh
$ irb
ruby-1.9.2-p180 > require 'sinatra/base'
=> true
ruby-1.9.2-p180 > class GeneralApp < Sinatra::Base; end
=> nil
ruby-1.9.2-p180 > class CustomApp < GeneralApp; end
=> nil
ruby-1.9.2-p180 > GeneralApp.set :foo, 42
=> MyApp
ruby-1.9.2-p180 > GeneralApp.foo
=> 42
ruby-1.9.2-p180 > CustomApp.foo
=> 42
ruby-1.9.2-p180 > CustomApp.set :foo, 23
=> 23
ruby-1.9.2-p180 > CustomApp.foo
=> 23
ruby-1.9.2-p180 > GeneralApp.foo
=> 42
```
