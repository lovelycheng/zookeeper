#!/usr/bin/env bash

case $1 in
1)
    echo  -n "Status server 1 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server1/conf1.cfg
    ;;
2)
    echo  -n "Status server 2 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server2/conf2.cfg
    ;;
3)
    echo  -n "Status server 3 ... "
    /users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server3/conf3.cfg
    ;;
*)
echo  -n "Status server all ... "
/users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server1/conf1.cfg
/users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server2/conf2.cfg
/users/chengtong/zookeeper/bin/zkServer.sh status /users/chengtong/zookeeper/testconf/server3/conf3.cfg
;;

esac