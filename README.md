# HotLinks

Hotlinks is a rails api, that is used in conjunctions with the URLocbox app(git@github.com:JonathanSR/URLockbox). It is a site that is updated with the days hottest links submitted by the users through URLockbox. You can visit the live site at https://protected-woodland-35657.herokuapp.com/.

### Installing / Getting Started

```shell
git clone git@github.com:JonathanSR/hot_reads.git #clones this application to your machine.
cd hot_reads/ #gives you access to the root folder.
bundle #installs all dependencies needed to run the application
rake db:create #creates the databases.
rake db:migrate #runs all migrations that make changes to the databases.
```

### Usage

To run the test suite:
```shell
rspec
```

To run the server(runs on port 3000):
```shell
rails s
```

To access the database:
```shell
rails c
```