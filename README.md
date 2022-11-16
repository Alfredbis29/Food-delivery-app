# README

> This is a simple loyalty program -API that allows customers to create an account. after creating an account you will be asked to confirm your account through the token sent to your email address. the main objective is to encourage customers who use our services as well by earning points after purchasing a product. so far you can earn a reward depending on your activities. if you have 10 purchases in a month with a value of 100 usd you earn 5% off the last product you buy. if you have purchased at least 10 attemps in a month and your amount cost 100 usd you earn 10 points and if you were out of your location you earn double that means 20 points and that's prety cool if you want to updte the user location `User.last.update(location: "other")` and check if the price was rebased `Purchase.last.price`. all points expire after one year. This API is made these models:

  - User Model
  - Product Model
  - Purchase Model
  - Point mondel 
  - Reward Model
  
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
- Sidekiq
- Redis
- Rswag

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

👤 **Victor Barh**

- GitHub: [@Vvic778](https://github.com/vic778)
- Twitter: [@victoirBarh](https://twitter.com/)
- LinkedIn: [LinkedIn](https://linkedin.com/in/victoir-barh)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

 N/A

## 📝 License

This project is [MIT](lic.url) licensed.
