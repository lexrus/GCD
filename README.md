# Ghost + Caddy + Dropbox

## Requirements

1. A Debian or Ubuntu Linux box which can run Docker
2. A domain name binded to that box
3. A Dropbox account for backup

## Features

0. Host [Ghost with Docker](https://hub.docker.com/r/library/ghost/)
1. SSL server with [Caddy](https://hub.docker.com/r/abiosoft/caddy/)
2. Backup contents with [ghost-backup](https://hub.docker.com/r/bennetimo/ghost-backup/)
3. Store the backup files in Dropbox with [docker-dropbox](https://github.com/bennetimo/docker-dropbox)

## Usage

``` bash
# Clone this project in a Linux box:
git clone https://github.com/lexrus/ghost-with-docker-compose.git ghost
cd ghost

# Create Caddyfile:
cp Caddyfile{.example,}

# Edit the domain to match current box:
vim Caddyfile

# Install Docker
sh install.sh

# Visit the URL to link your Dropbox:
docker-compose logs dropbox

# Test backup feature
docker-compose exec backup backup
```


```
The MIT License (MIT)
Copyright © 2016 Lex.sh, https://lex.sh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```