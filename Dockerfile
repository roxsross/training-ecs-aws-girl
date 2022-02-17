FROM node:erbium-alpine
# Config
ENV NODE_ENV uat
ENV PORT 3000

# Create app directory
WORKDIR /usr/src/app
COPY ./ /usr/src/app/

# install dependencies
RUN npm install --production

EXPOSE 3000
#Added Date command before, so Cloudwatch identify the logs for syncup
CMD ["sh", "-c", "date ; npm start "]

#byRoxsRoss