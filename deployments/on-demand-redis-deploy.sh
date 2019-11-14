#!/bin/bash

bosh -d paas-ta-on-demand-redis-service deploy paasta_on_demand_redis_service.yml \
   -l necessary_on_demand_vars.yml\
   -l unnecessary_on_demand_vars.yml
