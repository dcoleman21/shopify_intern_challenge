# Shopify Intern Challenge: add/delete a photo

#### Ruby version
`ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-darwin19]`

#### Rails version
`Rails 6.1.3.1`

#### Configuration
1. Create a directory for where you would like this application to live `mkdir [Name]`
2. CD into the new directory `cd [Directory Name]`
3. Once in the directory do a `git clone` and copy the code snippet from the green button located on this repo and paste it after the `git clone` command. Hit enter
4. Now `cd` into the new project that you just cloned.
5. Next run `bundle install` to install gems and dependencies

#### Database creation
1. Run `rails db:create` to create a new database for photos
2. Run `rails db:migrate` to install the created tables (Users and Photos)

#### How to run the test suite
1. If you want to run the entire test suite use `bundle exec rspec`
2. If you want to run a specific group of tests use `rspec spec/features/photos` or `rspec/spec/models`
3. if you want to run a specific test use `respec spec/features/photos/index_spec.rb:12` enter the line number of the test that you want to run

#### See it locally
1. If you want to see it in development mode, in your terminal open a new tab and run `rails s` to spin up your local server
2. Then open a new tab in your web browser and type in `localhost:3000/photos`
