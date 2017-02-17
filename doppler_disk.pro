#-------------------------------------------------
#
# Project created by QtCreator 2016-07-15T15:45:40
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = doppler_disk
TEMPLATE = app
DEFINES -= UNICODE

VERSION = 1.0
VERSTR = '\\"$${VERSION}\\"'
DEFINES += VER=\"$${VERSTR}\"
DEFINES += WINVER=0x0601
DEFINES += _WIN32_WINNT=0x0601

SOURCES += main.cpp\
        mainwindow.cpp \
    disk.cpp \
    elapsedtimer.cpp

HEADERS  += mainwindow.h \
    disk.h \
    elapsedtimer.h

FORMS    += mainwindow.ui

RESOURCES += \
    doppler.qrc


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/quazip -lquazip#C:/Users/xrz/Desktop/build-quazip-Desktop_Qt_5_4_1_MinGW_32bit-Release/quazip/release/ -lquazip
else:unix: LIBS += -LC:/Users/xrz/Desktop/build-quazip-Desktop_Qt_5_4_1_MinGW_32bit-Release/quazip/ -lquazip

INCLUDEPATH += $$PWD/quazip/quazip#C:/Users/xrz/Desktop/quazip-0.7.2/quazip
DEPENDPATH += $$PWD/quazip/quazip#C:/Users/xrz/Desktop/quazip-0.7.2/quazip
