FROM node:18-alphine3.17

WORKDIR /app

RUN npm i -g pnpm

ARG PORT_HOST

ARG HOSTNAME

ENV PORT_HOST=${PORT_HOST}
ENV HOSTNAME=${HOSTNAME}
# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./
COPY pnpm-lock.yaml ./

# Install dependencies
RUN pnpm i --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN pnpm build

# Start the Node.js server
CMD [ "pnpm", "preview", "--host" ]