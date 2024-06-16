# Use an official Node.js runtime as a parent image
FROM node

# Set the working directory in the container
WORKDIR /usr/app

COPY . .

# Install Node.js dependencies
RUN npm install

RUN npm install express

COPY . .

# Expose the port your app runs on
EXPOSE 3000

ENV PORT=3000

# Command to run your application
CMD ["node", "server.js"]

