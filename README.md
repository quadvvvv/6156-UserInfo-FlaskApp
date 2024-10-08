# 6156-UserInfo-FlaskApp

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

This Flask application provides a RESTful API for managing user information, including recruiters and job seekers.

## Features

- Get user information by email
- Retrieve all recruiters
- Retrieve all job seekers
- Get total user count
- Create new users
- Update user company information
- Delete users

## Tech Stack

- 🐍 Python
- 🌶️ Flask
- 🐘 PostgreSQL
- ☁️ AWS S3 (optional)
- 🐳 Docker

## Setup

1. Install required packages:
   ```
   pip install flask psycopg2-binary boto3
   ```

2. Configure the database connection in the script:
   - Update `db_host`, `db_port`, `db_user`, `db_password`, and `db_name` variables

3. (Optional) Configure AWS S3 for picture uploads:
   - Uncomment and update S3 configuration variables
   - Implement the `upload_to_s3` function

## API Endpoints

- `GET /userinfo/<email>`: Get user information
- `GET /userinfo/recruiters`: Get all recruiters
- `GET /userinfo/jobseekers`: Get all job seekers
- `GET /userinfo/total_count`: Get total user count
- `POST /userinfo`: Create a new user
- `PUT /userinfo/<email>`: Update user's company
- `DELETE /userinfo/<email>`: Delete a user

## Middleware

- 📝 Request logging: Logs request information to `request_log.txt`
- 📊 Response logging: Logs response information to `response_log.txt`

## Docker Commands

To build and run the application using Docker:

1. View running Docker containers:
   ```
   docker ps
   ```

2. Build the Docker image:
   ```
   docker build -t userinfoms:latest .
   ```

3. Run the Docker container:
   ```
   docker run userinfoms:latest
   ```

4. Run the Docker container with port binding:
   ```
   docker run -p 5001:5001 userinfoms:latest
   ```

5. Stop all running Docker containers:
   ```
   docker stop $(docker ps -q)
   ```

## Running the Application Locally

If you're not using Docker, you can run the application directly:

```
python app.py
```

The server will run on `http://0.0.0.0:5001` in debug mode.

## Note

🔒 Ensure proper security measures are implemented before deploying this application in a production environment, especially regarding database credentials and AWS S3 configuration.
