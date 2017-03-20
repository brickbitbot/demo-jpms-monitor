#!/bin/bash

#Java executable for standard Linux environment
export JAVA=java
#Java executable for MinGW environment
#export JAVA=/c/jdk9/bin/java.exe

echo ""
echo "--- LAUNCH ---"

echo " > dry-run monitor"
echo ""

if [ "$1" == "mvn" ]
then
# the classpath is needed for Spark's dependencies
# add the optional dependency stats.fancy
	$JAVA \
		--module-path mods-mvn \
		--class-path "libs/*" \
		--add-modules stats.fancy \
		--dry-run \
		--module monitor
else
# the classpath is needed for Spark's dependencies
# add the optional dependency stats.fancy
	$JAVA \
		--module-path mods \
		--class-path "libs/*" \
		--add-modules stats.fancy \
		--dry-run \
		--module monitor
fi
