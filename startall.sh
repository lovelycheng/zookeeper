#!/usr/bin/env bash

case $1 in
1)
    echo  -n "Starting server 1 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server1/conf1.cfg
    ;;
2)
    echo  -n "Starting server 2 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server2/conf2.cfg
    ;;
3)
    echo  -n "Starting server 3 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server3/conf3.cfg
    ;;
*)
echo  -n "Starting server all ... "
/users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server1/conf1.cfg
/users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server2/conf2.cfg
/users/chengtong/zookeeper/bin/zkServer.sh start /users/chengtong/zookeeper/testconf/server3/conf3.cfg
;;

esac