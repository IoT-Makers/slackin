FROM node:slim

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3001

CMD ./bin/slackin --coc "$SLACK_COC" --channels "$SLACK_CHANNELS" --hostname "0.0.0.0" --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN $GOOGLE_CAPTCHA_SECRET $GOOGLE_CAPTCHA_SITEKEY
