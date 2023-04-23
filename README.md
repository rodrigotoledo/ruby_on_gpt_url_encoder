# Unique URL Code Generation Project in Rails

This is a Ruby on Rails project that aims to create unique codes for URLs. Furthermore, the project is 100% covered by TDD (Test Driven Development) tests.

The main goal of the project is to allow users to input a URL and get a unique code that can be used instead of the original URL. This process can be quite useful in several situations, such as when the original URL is too long or hard to remember.

The project utilizes the TDD approach to ensure that all functionalities are fully tested before being implemented. The tests are written before the code implementation and are continuously run to ensure the functionalities are working correctly.

The project development process involves creating a model to store URLs and their respective unique codes, along with a user interface to allow users to input URLs and get their unique codes. Additionally, a custom validator is created to ensure all inputted URLs are valid and a redirect is implemented to take the user to the original URL from the generated unique code.

The project is entirely covered by automated tests, including unit tests, integration tests, and acceptance tests. All tests are automatically executed through CI/CD (Continuous Integration/Continuous Deployment) to guarantee that all project functionalities are working correctly at all times.

## Technologies Used

- Ruby on Rails
- RSpec (for tests)

## How to Run the Project

1. Clone the repository on your local machine
2. Install project dependencies with the command `bundle install`
3. Configure with your postgres database data and run `rails db:create db:migrate db:seed`
4. Run the tests with the command `bundle exec guard`
5. Start the server with the command `rails server`
6. Access the application in your browser at `http://localhost:3000`

## Conclusion

This project is an example of how to use the TDD approach in combination with Ruby on Rails to guarantee the quality and functionality of developed code. With this project, it's possible to learn and practice creating unique codes for URLs, URL validation, and redirections in Ruby on Rails while practicing test-driven development.
