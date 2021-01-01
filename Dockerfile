FROM node:alpine

WORKDIR /usr/app

# COPY ONLY package.json TO ENSURE npm install RUNS ONLY IF 
# THERE IS A CHANGE IN THE DEPENDENCIES
COPY ./package.json ./
RUN npm install

COPY ./ ./

CMD [ "npm", "start" ]

# RUN DOCKER WITH PORT MAPPING FROM COMMAND LINE
# docker run -p 8080:8080 <image name>
# LEFT TO COLON IS PORT OF LOCAL MACHINE WHILE OTHER IS PORT IN CONTAINER
