# Personicle application - Ruby on Rails

## Installation

First, Pull the code, install gems and create database.

``` bundle install ```

``` rake db:create ```

Next, Migrate Database

``` rake db:migrate ```

``` cd config ```
``` touch application.yml```
``` cd .. ```
## Add Okta configuration in application.yml

```
OKTA_CLIENT_ID: "YOUR-CLIENT-ID"
OKTA_CLIENT_SECRET: "YOUR-CLIENT-SECRET"
OKTA_ORG: "YOUR-OKTA-ORG"
OKTA_DOMAIN: "okta"
OKTA_URL: "YOUR-OKTA-ORG-URL"
OKTA_ISSUER: "YOUR-OKTA-ISSUER-URL"
OKTA_AUTH_SERVER_ID: "YOUR-AUTH-SERVER-ID"
OKTA_REDIRECT_URI: "http://localhost:3000/users/auth/oktaoauth/callback"

```

## Start Rails Server
``` rails s ```

``` localhost: 3000 ```
