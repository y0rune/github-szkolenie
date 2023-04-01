# github-szkolenie

## Building the image locally

### Building

```
docker build -t github-szkolenie .
```

### Create new release from your local build

```
docker save -o github-szkolenie.tar github-szkolenie
```

## Run the one container

```
./create.sh create
```

## Run the 32 containers

```
./create.sh create 32
```

## Delete the all containers

```
./create.sh delete
```

## Error with failed to create LLB

```
In the end I found a (or the) solution in the Docker forum: in Docker Desktop, navigate to Settings > Docker Engine, change buildkit to false in the Docker daemon configuration file and then click "Apply & Restart".

{
  "builder": {
    "gc": {
      "defaultKeepStorage": "20GB",
      "enabled": true
    }
  },
  "experimental": false,
  "features": {
    "buildkit": false
  }
}
```
