#!/bin/bash
drill --benchmark tokio.yml --stats --timeout 600 --quiet
drill --benchmark mixed.yml --stats --timeout 600 --quiet
drill --benchmark native.yml --stats --timeout 600 --quiet
drill --benchmark proxy_tokio.yml --stats --timeout 600 --quiet
drill --benchmark proxy_mixed.yml --stats --timeout 600 --quiet