# TURN Simulation on Docker

**Work in Progress**

This project is based on Docker images with virtual environment. Aim of this project is creating a TURN simulation with clients that are behind NATs.

Please commit or report any improvement or bug. 

**Installation:**
Download .env and docker-compose.yaml files in the same directory. Run the following command:

```
docker-compose --env-file .env up
```
Containers will be created and you can see the steps on the screen. After that, you can switch between containers.
To check reflexive IP address, switch on to the desired client and type:
```
turnutils_natdiscovery -m 172.20.0.2
```
So, you can see that actually NAT is working.
