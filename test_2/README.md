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

### Logging


