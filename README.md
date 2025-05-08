
# Catalog App (Ruby on Rails)

This is a basic Ruby on Rails web application for managing a simple product catalog. It includes two core models—**Product** and **Category**—with a standard CRUD interface generated using Rails scaffolds.

## 🚀 Features

- Ruby on Rails 7.x
- SQLite3-backed development database
- Scaffold-generated CRUD views for `Product` and `Category`
- Model-level validations and scopes
- Data seeding with the `faker` gem
- No authentication or authorization—intended for local use and learning

## 📦 Models

### `Category`
- `id`: Integer
- `name`: String

### `Product`
- `id`: Integer
- `name`: String
- `price`: Decimal
- `category_id`: Integer (foreign key)

## 🔧 Setup Instructions

Make sure you have Ruby 3.3+ and Rails 7 installed via `rbenv`.

```
bundle install
rails db:migrate
rails db:seed   # Optional: loads fake data
rails server
```

Visit http://localhost:3000

If you want the home page to show products:
```
# config/routes.rb
root "products#index"
```

🔌 CRUD URLs
/categories

/products

All standard index, show, new, edit, create, update, and delete actions are supported via HTML forms.

💡 Extras
Validates presence of name and price on Product

Scope added for Product.expensive (price > 100)

Uses faker to seed random categories and products

rails console available for ad hoc DB queries

🤓 Tech Stack
Ruby 3.3.x

Rails 7.x

SQLite3

Faker (for seeding)

ERB + HTML views

Bootstrap-style scaffold layout

📝 Notes
This was built as part of a project to compare Ruby on Rails (web UI) with Kotlin Spring Boot (REST API). A corresponding Kotlin API project exists in the kotlin_api repo.

yaml
Copy
Edit

