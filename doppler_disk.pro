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

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/quazip/ -lquazip
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/quazip/ -lquazipd

INCLUDEPATH += $$PWD/lib/quazip/include
DEPENDPATH += $$PWD/lib/quazip/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/zlib/ -lzlib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/zlib/ -lzlibd

INCLUDEPATH += $$PWD/lib/zlib/include
DEPENDPATH += $$PWD/lib/zlib/include

DISTFILES += \
    manifest.xml

win32:CONFIG(release, debug|release): QMAKE_POST_LINK+=mt -manifest $$PWD/manifest.xml -outputresource:$$OUT_PWD/release/$$TARGET".exe"$$escape_expand(\n\t)
else:win32:CONFIG(debug, debug|release): QMAKE_POST_LINK+=mt -manifest $$PWD/manifest.xml -outputresource:$$OUT_PWD/debug/$$TARGET".exe"$$escape_expand(\n\t)

