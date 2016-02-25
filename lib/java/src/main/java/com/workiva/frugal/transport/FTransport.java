package com.workiva.frugal.transport;

import com.workiva.frugal.protocol.FContext;
import com.workiva.frugal.exception.FException;
import com.workiva.frugal.protocol.FAsyncCallback;
import com.workiva.frugal.protocol.FRegistry;
import com.workiva.frugal.transport.monitor.FTransportMonitor;
import com.workiva.frugal.transport.monitor.MonitorRunner;
import org.apache.thrift.TException;
import org.apache.thrift.transport.TTransport;

import java.util.logging.Logger;

/**
 * FTransport is a Thrift TTransport for services.
 */
public abstract class FTransport extends TTransport {

    private static Logger LOGGER = Logger.getLogger(FTransport.class.getName());

    public static final int REQUEST_TOO_LARGE = 100;
    public static final int RESPONSE_TOO_LARGE = 101;

    private volatile FClosedCallback _closedCallback;
    private volatile FTransportClosedCallback closedCallback;
    private volatile FTransportClosedCallback monitor;
    protected FRegistry registry;

    /**
     * Set the FRegistry on the FTransport.
     *
     * @param registry FRegistry to set on the FTransport.
     */
    public abstract void setRegistry(FRegistry registry);

    /**
     * Register a callback for the given FContext.
     *
     * @param context  the FContext to register.
     * @param callback the callback to register.
     */
    public synchronized void register(FContext context, FAsyncCallback callback) throws TException {
        if (registry == null) {
            throw new FException("registry not set");
        }
        registry.register(context, callback);
    }

    /**
     * Unregister the callback for the given FContext.
     *
     * @param context the FContext to unregister.
     */
    public synchronized void unregister(FContext context) throws TException {
        if (registry == null) {
            throw new FException("registry not set");
        }
        registry.unregister(context);
    }

    /**
     * Set the closed callback for the FTransport.
     *
     * @param closedCallback
     * @deprecated use {@link #setClosedCallback(FTransportClosedCallback)} instead.
     */
    @Deprecated
    public synchronized void setClosedCallback(FClosedCallback closedCallback) {
        this._closedCallback = closedCallback;
    }

    /**
     * Set the closed callback for the FTransport.
     *
     * @param closedCallback
     */
    public synchronized void setClosedCallback(FTransportClosedCallback closedCallback) {
        this.closedCallback = closedCallback;
    }

    /**
     * Starts a monitor that can watch the health of, and reopen, the transport.
     *
     * @param monitor the FTransportMonitor to set.
     */
    public synchronized void setMonitor(FTransportMonitor monitor) {
        LOGGER.info("FTransport Monitor: Beginning to monitor transport...");
        this.monitor = new MonitorRunner(monitor, this);
    }

    protected synchronized void signalClose(final Exception cause) {
        // TODO: Remove deprecated callback in future release.
        if (_closedCallback != null) {
            _closedCallback.onClose();
        }
        if (closedCallback != null) {
            closedCallback.onClose(cause);
        }
        if (monitor != null) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    monitor.onClose(cause);
                }
            }, "transport-monitor").start();
        }
    }
}
