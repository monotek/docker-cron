# docker-cron

docker cron container

mount your crontabs to /etc/cron.d

Build: docker image build -t yourname/cron .

Run: docker container run -d -v /dir:/etc/cron.d yourname/cron
