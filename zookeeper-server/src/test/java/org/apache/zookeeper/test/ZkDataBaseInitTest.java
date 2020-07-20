package org.apache.zookeeper.test;

import org.apache.zookeeper.ZKTestCase;
import org.apache.zookeeper.server.ZKDatabase;
import org.apache.zookeeper.server.persistence.FileTxnSnapLog;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;

/**
 * @author chengtong
 * @date 2020/5/7 13:21
 */
public class ZkDataBaseInitTest extends ZKTestCase {

    protected static final Logger LOG = LoggerFactory.getLogger(ZkDatabaseCorruptionTest.class);
    public static final long CONNECTION_TIMEOUT = ClientTest.CONNECTION_TIMEOUT;

    @Before
    public void setUp() throws Exception {
        LOG.info("STARTING quorum {}", getClass().getName());
    }

    @After
    public void tearDown() throws Exception {
        LOG.info("STOPPING quorum {}", getClass().getName());
    }

    @Test
    public void test() throws Exception {

        File dataFile = new File("/Users/chengtong/zookeeper/test/server1");
        File dataLogFile = new File("/Users/chengtong/zookeeper/test/server1");

        ZKDatabase zkDatabase = new ZKDatabase(new FileTxnSnapLog(dataFile,dataLogFile));

        long zxid =  zkDatabase.loadDataBase();
    }





}
