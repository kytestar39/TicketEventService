package com.server.connections;

import com.sun.corba.se.spi.activation.Server;
import org.eclipse.jetty.server.nio.SelectChannelConnector;

/**
 * A TCP server that runs on port 9090.  When a client connects, it
 * sends the client the current date and time, then closes the
 * connection with that client.  Arguably just about the simplest
 * server you can write.
 */
public class Connection {

	 public static void main(String[] args) throws Exception
	    {
	        Server server = new Server();
	 
	        SelectChannelConnector connector0 = new SelectChannelConnector();
	        connector0.setPort(8080);
	        connector0.setMaxIdleTime(30000);
	        connector0.setRequestHeaderSize(8192);
	 
	        SelectChannelConnector connector1 = new SelectChannelConnector();
	        connector1.setHost("127.0.0.1");
	        connector1.setPort(8888);
	        connector1.setThreadPool(new QueuedThreadPool(20));
	        connector1.setName("admin");
	 
	        SslSelectChannelConnector ssl_connector = new SslSelectChannelConnector();
	        String jetty_home = 
	          System.getProperty("jetty.home","../jetty-distribution/target/distribution");
	        System.setProperty("jetty.home",jetty_home);
	        ssl_connector.setPort(8443);
	        SslContextFactory cf = ssl_connector.getSslContextFactory();
	        cf.setKeyStore(jetty_home + "/etc/keystore");
	        cf.setKeyStorePassword("OBF:1vny1zlo1x8e1vnw1vn61x8g1zlu1vn4");
	        cf.setKeyManagerPassword("OBF:1u2u1wml1z7s1z7a1wnl1u2g");
	 
	        server.setConnectors(new Connector[]{ connector0, connector1, ssl_connector });
	 
	        server.setHandler(new HelloHandler());
	 
	        server.start();
	        server.join();
	    }
}
