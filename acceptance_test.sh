#!/bin/bash
test $(curl 172.17.0.1:8765/sum?a=1\&b=24) -eq 25
test $(curl 172.17.0.1:8765/sum?a=1\&b=3) -eq 4
test $(curl 172.17.0.1:8765/sum?a=1\&b=4) -eq 5