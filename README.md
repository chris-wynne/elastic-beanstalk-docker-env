# elastic-beanstalk-docker-env

Docker container for running and deploying AWS ESB locally. Use the compose to mount folders to the container.
Check the mount for aws credntials is correct.

## To build

```bash
docker compose build
```

```bash
docker compose up -d
```

## Running EB in container 

Shell into container
```bash
docker exec -it eb-cli-container bash
```

Check eb instillation
```bash
eb --version
```

