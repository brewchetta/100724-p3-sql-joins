# SQL Table Relationships

## Learning Goals

- Introducing domain modeling for table relationships

- One to many relationships

- Many to many relationships

- Foreign keys

- The JOIN keyword

## Reminder to Chett

DO NOT CLEAR YOUR TERMINAL OUTPUT BEFORE PUTTING IT IN `output.txt`!

## Getting Started

Once you've cloned the repository, you can create the tables with `sqlite3 main.db < create_tables.sql`.

You'll then be able to open the database in sqlite3 with `sqlite3 main.db`.

## Exercises

- Come up with a modeling domain based on football. How would the relationship between Players and Teams look? What if there was a Contract model that allowed multiple players to play on multiple teams during their career?

- Come up with a modeling domain based on Amazon. How would the relationships between Users, Products, and Orders look?


`Users --< Orders --< OrderProducts >-- Products >-- Brands`


- Come up with a modeling domain based on Twitter. How would the relationships between Users, Tweets, and Comments work? As a bonus, how would a User follow another User?


```
Users --------< Tweets
  ^--< Comments >--^
```
```
users_table
id
name

follows_table
id
follower_id --> user.id
followee_id --> user.id
```


## Resources

[https://dbdiagram.io](https://dbdiagram.io)

[Example Diagrams from Class](https://dbdiagram.io/d/031124-Relational-Examples-662a75e603593b6b61f8d637)