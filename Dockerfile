FROM node:lts-buster
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg webp git && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*
USER node
RUN git clone https://github.com/whatsappbot228-ship-it/SCORPION-MD-V1/new/main /home/node/MALVIN-XD
WORKDIR /home/node/SCORPION-MD
RUN chmod -R 777 /home/node/SCORPION/
RUN yarn install --network-concurrency 1
EXPOSE 7860
ENV NODE_ENV=production
CMD ["npm", "start"]
