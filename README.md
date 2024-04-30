# Backend
## Getting Started
### Setting up the ENV
1. Create a .env file in the root directory of the project.
2. Add the necessary environment variables to the .env file. Example:
<pre>
SECRET_KEY=your_secret_key
DATABASE=path_to_your_database.db
UBI_EMAIL=example@example.com
UBI_PASSWORD=yourpassword
MACHINE_LEARNING=http://IP:PORT/accept_data
</pre>

### Building the Docker Image
Run the following command in the terminal from the root directory of the project to build the Docker image:
<pre>
docker build -t csc468-backend .
</pre>
This command builds a Docker image named csc468-backend based on the instructions in the Dockerfile.

### Running the Docker Container
After building the image, run the following command to start the container:
<pre>
docker run --env-file .env -p 3000:3000 csc468-backend
</pre>
This will start the Flask application within a Docker container, applying the environment variables from your .env file and making the app accessible at http://localhost:5000.

## Docker 
You can easily deploy this by pulling the image and building it from docker hub.
<pre>
docker pull maxwellmendenhall/strike-force-tracker
</pre>

## Using the /get_rainbow_stats route
To use this route you need to send 2 query params to it. Query param 1 is uid1 which is the attackers user id
and uid2 is the defenders user id. This route uses a 'GET' request. 

An example of how the query params look like are below. Remember to replace IP with actual IP and PORT with actual port.
<pre>
http://IP:PORT/get_rainbow_stats?uid1=7e0f63df-a39b-44c5-8de0-d39a05926e77&uid2=7e0f63df-a39b-44c5-8de0-d39a05926e77
</pre>

