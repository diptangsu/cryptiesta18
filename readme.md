<p align="center"><img src="public/favicon.ico"></p>

# Cyber Hunt
This is the website of the event Cyber Hunt held at AOT in Techfiesta2018, the annual techfest of AOT.

This website is made using laravel.

Run the command `composer install`

Load the migrations/tables in the database using `php artisan migrate`

To launch this website, run the command `php artisan serve`

## How to run website like the event
Create two databases
- cryptiesta18
- cyberhunt18finals

Import the tables from [here](/public/assets/databases)

Go to [`.env.example`](/.env.example) and change line 12 to the specific database `DB_DATABASE=cyberhunt18finals` or `DB_DATABASE=cryptiesta18`

Create a copy of `.env.example` and rename it to `.env`

Goto [assets](/public/assets) and change the folder name of the questions to be loaded as `questions`

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of any modern web application framework, making it a breeze to get started learning the framework.

If you're not in the mood to read, [Laracasts](https://laracasts.com) contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.
