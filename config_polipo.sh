touch /etc/resolv.conf
mkdir -p /etc/polipo
touch /etc/polipo/forbidden

cat > /etc/polipo/config << __YDEOF__
socksParentProxy = localhost:26515
socksProxyType = socks5
daemonise = true
logFile = "/tmp/polipo.log"
diskCacheRoot = ""
localDocumentRoot = ""
__YDEOF__

