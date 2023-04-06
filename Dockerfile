# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN yarn

# Make port 80 available to the world outside this container
EXPOSE 30

# Define environment variable
ENV NAME World

# Run the app when the container launches
CMD ["yarn", "run"]
