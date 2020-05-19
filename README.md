# docker-grokdebug
The lovely grokdebug tool (https://grokdebug.herokuapp.com) in a Docker container.

Since the original location for the application seems heavy loaded, why not bring up your own instead? It does of course have some other advantages as well running your own container as the grok patterns are executed on the server.

Big thanks to Nick Ethier (nickethier), lunderhage and others for the original work.

## How to run:
`sudo docker run -p 127.0.0.1:8080:80 -d robinlennox/docker-grokdebug`
