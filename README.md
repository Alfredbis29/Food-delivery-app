# README
This is A simple food delivery app that allows users to browse a menu of available food items, select items to add to their cart, and place an order for delivery or pickup.

The app typically has a database that stores information about food items, users and orders.

  - FoodItem: This model represents a food item that can be ordered. It has attributes such as name, description, price, and image_url.
  - User: This model represents the super admin and the normal user, such as a customer or a restaurant owner. It has attributes such as name, email, and password.
  - Order: This model represents an order placed by a user. It  has attributes such as user_id, total_price,quatity, and status.
  
### User confirmation Mailer
![img](app/assets/images/screenshot.png)

### Message rendered from the backend 
![img](app/assets/images/screenshot2.png)

### Deployment
 N/A `Kinldy i can't config my google SMTP because i using it to some of my projects that's why i did;\'nt deployed the app on heroku as well`
## Built With

- Rails
- Ruby 
- Postgresql
- Devise
- JWT
- ActiveRecord Serializer

## Getting Started

Here are the steps to follow in order to get this project on your local computer.

### Prerequisites

`rails v7.0.2 +`

`ruby v3.0.2 +`

### Setup

clone this repo by typing `git clone https://github.com/vic778/Jumia-API`

### Install

install the dependencies by typing `bundle install`

### Usage

start the local server by running `rails s`

### Testing

run the tests by typing `rails rswag`

![img](app/assets/images/rswag.png)
![img](app/assets/images/rspec.png)


### Documentation


## Author

👤 **Alfredbis29**

- GitHub: [@Alfredbis29](https://github.com/Alfredbis29)
- Twitter: [@Alfredbisimwa](https://twitter.com/)
- LinkedIn: [Alfred Bisimwa](https://www.linkedin.com/in/alfred-bisimwa/)

## 🤝 Contributing


Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

 N/A

## 📝 License

This project is [MIT](lic.url) licensed.
