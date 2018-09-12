# amuled Dockerfile repository

[![Docker Repository on Quay](https://quay.io/repository/beelzetron/amuled/status "Docker Repository on Quay")](https://quay.io/repository/beelzetron/amuled)

This repo contains a Dockerfile to run a containerized amule daemon.

To run amuled use this command:

```docker run -d --name amuled --restart always -p 4665:4665/udp -p 4662:4662/tcp -p 4672:4672/udp -p 4712:4712/tcp -v /data/aMule:/home/amule/.aMule quay.io/beelzetron/amuled:2.3.2_v1.1```

**You need to pass a volume to persist data and configurations.**
