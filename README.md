# VForum

This application is simple forum application. Application may be use to making channels (admin or moderator), creating discussions in channels and reply to discussion. You can also edit and delete your own discussions or replies. If you are admin or moderator you can delete and edit all elements.

## Project Status

During development.

### Installing

1. Run this command in catalog of your choice: 
```bash
git clone https://github.com/dawiddd95/VForum_Rails.git
```
2. In terminal go now to VForum_Rails created catalog
```bash
cd VForum_Rails
```
3. Go to file config/databae.yml and pass your username and password to your local database to be able to using application
```bash
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root <= Write here your local database username
  password: m2svs4 <= Write here your password to local database. If you don't have password leave empty
  host: localhost
```
4. Now come back to terminal and run command:
```bash
rails db:setup
```
5. Wait until is done
6. Your app is ready!
7. Run in your command Ruby on Rails server
```bash
rails s
```
8. Now go to http://localhost:3000/ in your web browser url

### Usage

1. Every new register user has no role
2. As admin you can do everything just login as admin with:  admin@gmail.com => Qwedsa123
3. As moderator you can delete all elements, just login as moderator with:  moderator@gmail.com => Qwedsa123
4. As logged user you can only delete and edit you own elements
5. As not logged in user, you can only read everything
