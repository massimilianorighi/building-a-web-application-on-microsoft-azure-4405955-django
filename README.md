# Wisdom Pet Medicine Pet Management System

Django version of the C#/.NET example: "Wisdom Pet Medicine" web application.

# Django admin
Admin page page can be reached with the following credentials:
| Username  |  Password |
|---|---|
| admin  | aKxC1094  |

# Execute locally
To execute locally, first create the db.sqlite3 database that contains the pets from the course exercise. To do so, in the root folder execute:
```
sqlite3 db.sqlite3 < exercise_data.sql
```
Then, to execute the Django project:
```
python3 manage.py runserver
```

# Secret key

## Local development

Fill in a secret value in the `.env` file.

For local development, use this random string as an appropriate value:

```shell
SECRET_KEY=123abc
```

## Azure Deployment

For deployment to production, create an app setting, `SECRET_KEY`. Use this command to generate an appropriate value:

```shell
python -c 'import secrets; print(secrets.token_hex())'
```