# Setting up a base image with node preinstalled
FROM node:16

# Sets up a working directory inside container
WORKDIR /app

# Copies the package.json file into 
COPY package.json .

# install node dependencies 
RUN npm install

# Copy application code
COPY . .

#  Expose the port the app runs on
EXPOSE 3000

# Step 7: Define the command to run the application
CMD ["npm", "start"]