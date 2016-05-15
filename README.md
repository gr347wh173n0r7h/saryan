# SARYAN
## SE 195 Project 
### Jordan Petersen, Lisa Efird, Sarmad Syed
----

### Deployment

- [Heroku Depolyment][heroku]
## Ubuntu
---
### Install Rails

- [How to Install Ruby Rails][rails]

### Run Rails Application
#### 1- Pull repository
```sh
$ git clone <repository>
```
#### 2- Open repository folder
```sh
$ cd <dir>
```
#### 3- Run Gem install
```sh
$ bundle install
```
#### 4- Create Database
```sh
$ bundle exec rake db:migrate
```
#### 5- Seed Database
```sh
$ bundel exec rake db:seed
```
#### 6- Run local Rails web-server
```sh
$ rails s
```

## Cloud9
----
#### 1- Create Acount at [Cloud9][cloud9]

#### 2- Create new Worspace

#### 3- In Create Workspace set repository to:
```sh
git@github.com/gr347wh173n0r7h:saryan
```
#### 4- In Choose the Templace choose Custom option

#### 5- Let Cloud9 load workspace...

#### 6- Install Rails
```sh
gem install rails
```
#### 7- Run Gem install
```sh
$ bundle install
```
#### 8- Create Database
```sh
$ bundle exec rake db:migrate
```
#### 9- Seed Database
```sh
$ bundel exec rake db:seed
```
#### 9- Runs Rails Server
```sh
$ rails s -b $IP -p $PORT
```

[//]: #
[rails]: <https://gorails.com/setup/ubuntu/14.10>
[heroku]: <https://pure-springs-4374.herokuapp.com/>
[cloud9]: <https://c9.io/>

