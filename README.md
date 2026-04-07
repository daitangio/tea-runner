# Tea Runner
Minimalist CI/CD for your Gitea

[![Build](https://github.com/DavesCodeMusings/tea-runner/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/DavesCodeMusings/tea-runner/actions/workflows/docker-image.yml)

Use `docker compose -f compose.yml up -d` for a quick start.



## Simple setup: how to add to an existing gitea repository

Go to the repository (we will call it "example") abd under settings/Webooks.
Add A gitea webooks with the following parameters:

1) URL: http://destination.host:1706/docker/build
2) HTTP Method: POST
3) Post Content: application/json
4) Click on "AddWebhook"


See the project's wiki for more detailed information.