#!/bin/bash

exec /tools/tyr_simple_service /conf/valhalla.json >> /var/log/tyr.log 2>&1
