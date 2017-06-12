#!/bin/bash
ssh root@lslave "\
/tmp/wrk/wrk-4.0.2/wrk --connections 6500 --threads 10 --duration 2m --timeout 30s -s /tmp/api_control_62854_agents.lua http://10.0.60.45:8040/ ; \
sleep 90; \
/tmp/wrk/wrk-4.0.2/wrk --connections 6500 --threads 80 --duration 5m --timeout 30s -s /tmp/api_control_62854_agents.lua http://10.0.60.45:8040/ ; \
sleep 90; \
/tmp/wrk/wrk-4.0.2/wrk --connections 6500 --threads 80 --duration 5m --timeout 30s -s /tmp/api_control_62854_agents.lua http://10.0.60.45:8040/ ; \
sleep 90; \
/tmp/wrk/wrk-4.0.2/wrk --connections 6500 --threads 80 --duration 5m --timeout 30s -s /tmp/api_control_62854_agents.lua http://10.0.60.45:8040/"
