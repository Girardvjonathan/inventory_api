# README
Small project to experiment building from the ground up a rails project with graphql

## Generate commands
### Generate rails project
```

rails new inventory_api -d postgresql --skip-action-mailbox --skip-action-text --skip-spring --webpack=react -T
```

### add models
```
rails g model Item name color size
rails g model Warehouse city:uniq
rails g model Inventory item:references warehouse:references quantity:integer

rails db:create db:migrate db:seed
```

### Add graphql
```
bundle add graphql
rails generate graphql:install

rails g graphql:object item
rails g graphql:object warehouse
rails g graphql:object inventory
```