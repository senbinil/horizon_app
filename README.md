# Horizon

Horizon is a marketplace application where various suppliers can sell their products.It serves as a platform for connecting sellers with buyers across different categories.

## Application Use Cases

The web application enables suppliers to view and add products through user
interfaces:

- Upload UI: Users can upload product details via XLSX/CSV files.
- Table View UI: Users can list existing and newly created product information.
- They can filter products based on categories and search for specific products.
- There is no upper limit to the number of products.

## Screenshots

![Products Table](https://drive.google.com/uc?id=1mHzPN2teu45Kc2UG3vC1z2jOWyX4yCC4)


## Framework

- Rails: 7.1.3
- Ruby: 3.3.0
- Database: PostgreSQL 16

#### Note: This application use turbo-rails(mainly turbo_frame) and Stimulus for handling javascript.

## Gems used

- [roo](https://github.com/roo-rb/roo): Handle both xlsx and csv file which the user inputs.
- [roo-xls](https://github.com/roo-rb/roo-xls): This library extends Roo to add support for handling class Excel files, including .xls,.xml files.
- [caxls](https://github.com/caxlsx/caxlsx): generate xlsx file.
- [caxlsx_rails](https://github.com/caxlsx/caxlsx_rails): A Rails plugin to provide templates for the axlsx gem.
- [faker](https://github.com/faker-ruby/faker): A library for generating fake data such as names, addresses, and phone numbers.
- [pagy](https://github.com/ddnexus/pagy): Pagy is a fast and lightweight library for pagination.
- [pg_search](https://github.com/Casecommons/pg_search): pg_search builds ActiveRecord named scopes that take advantage of PostgreSQL’s full text search.
- [bootstrap](https://github.com/twbs/bootstrap-rubygem): Bootstrap rubygem for css styling.
- [pry](https://github.com/pry/pry): A runtime developer console and IRB alternative with powerful introspection capabilities.

## Deployment

This application is deployed using [Render](https://render.com) free tier.

#### [Horizon Live](https://horizon-app-2ext.onrender.com)

##### Note: Expect slow loading when accessing live server as free tier instance will spin down with inactivity, which can delay requests by 50 seconds or more.

## Development

Check Ruby Version:

- First, ensure you have Ruby 3.3.0 installed on your system. You can use a version manager like RVM or rbenv to manage multiple Ruby versions.

Install Rails:

- If you haven't already installed Rails globally, you can do so using the gem command:

```bash
gem install rails
```

Clone the Repository:

- Clone the existing Rails app repository from your version control system (e.g., GitHub, GitLab, Bitbucket) to your local machine.

```bash
git clone <repository_url>
```

- Navigate to the App Directory

Install Dependencies:

```bash
    bundle install
```

Database Setup:

- Run migrations to create the database schema:

```bash
rails db:create db:migrate
```

Start the Server:

```bash
rails s
```

#### App should now be running locally at http://localhost:3000.
