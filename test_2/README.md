# Solution Test 2

## Requirements

- Docker 19.03.8
- docker-compose 1.28.5

## Usage

### Build

- Command build Docker image

```bash
export IMAGE_TAG=$(python3 -c "import webapp; print(webapp.__version__)")
docker build -f ./Dockerfile -t flask_webapp:$IMAGE_TAG .
```

Or

```bash
docker-compose build
```

### Run

- Command run:

```bash
export IMAGE_TAG=$(python3 -c "import webapp; print(webapp.__version__)")
docker run -d -p 80:80 \
    -v $PWD/logs:/app/logs \
    --name webapp \
    flask_webapp:$IMAGE_TAG
```

Or

```bash
docker-compose up -d
```

## Test

- Add host `127.0.0.1   abc.xyz` to `/etc/hosts`
- Command test:

```bash
curl http://abc.xyz
```

- Output

```json
{
  "Accept": "*/*",
  "Client IP": "127.0.0.1",
  "Host": "abc.xyz",
  "User-Agent": "curl/7.64.1"
}
```

### Logging

- File `access.log`
- Logs application will mount to folder `./logs`
