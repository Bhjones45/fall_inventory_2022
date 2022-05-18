# Inventory Logistics README

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

The Ruby on Rails Shopify Backend Developer Intern Challenge fall 2022.  The task of this application is to build an inventory tracking web application for a logistics company.  The application features full CRUD functionality for inventory items and allows for a single feature to export all product data to a CSV file and create warehoue locations with the ability to assign inventory to the location.


## Table of Contents
- [Overview](#overview)
- [Technologies and Design Principles](#technologies-and-design-principles)
- [Environment Setup](#environment-setup)
- [Configuration](#configuration)
- [Database Creation](#database-creation)
- [How to Run the Test Suite](#how-to-run-the-test-suite)
- [How to Run the Server](#how-to-run-the-server)
- [Contributors](#contributors)

## Overview

## Technologies and Design Principles
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" /> 
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/OOP-b87818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b8b018.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-33b818.svg?&style=flaste&logo=MVC&logoColor=white" />
</p>

</p>

### Environment Setup
#### Ruby 2.7.2
- Check your Ruby version `ruby -v`
- If your version is NOT Ruby 2.7.2, you can install Ruby 2.7.2 with `rbenv install 2.7.2`
- To set the Ruby version for a specific directory and all subdirectories within it,
```
cd <repo name>
rbenv local 2.7.2
```
- Double check that your Ruby version is correct after changing it with `ruby -v`

#### Rails 5.2.6
- [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) is a Gem, and if you are using rbenv, gems are specific to your current Ruby version, so you need to make sure you are on Ruby 2.7.2 before proceeding by following the instructions above.
- Check your Rails version `rails -v`
- If you get a message saying rails is not installed or you do not have version 5.2.5, run `gem install rails --version 5.2.5`.
- Double check that your Ruby version is correct after changing it with `rails -v`

## Configuration
```
git@github.com:Bhjones45/summer_internship2022.git
cd <repo name>
bundle
```

## Database Creation
```
rails db:{create,migrate}
```

## How to Run the Test Suite
```
bundle exec rspec
```

## How to Run the Server
```
rails s
```
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
## Requests


### Running Locally
Run the server in your command line with `rails server` or `rails s`. The application begins at `localhost:3000/inventory_items` from here you should be able to navigate the complete CRUD functionality of the website through links and buttons. 



![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Contributors

🧑‍🌾  **Brett Jones**
- Github: [Brett Jones](https://github.com/Bhjones45)
- LinkedIn: [Brett Jones](https://www.linkedin.com/in/brett-h-jones/)

[Back to top](#overview)
