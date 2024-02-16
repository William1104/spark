#!/bin/env bash

$(dirname $0)/../build/mvn dependency:analyze |  sed -n '/<<< dependency:.*:analyze/,/>>> dependency:.*:analyze/p' | tee -a analyze-dep.$(date +%Y%m%d-%H%M%S)
