FROM node:slim

RUN npm i docsify-cli -g

CMD /usr/local/bin/docsify serve /work/docs
