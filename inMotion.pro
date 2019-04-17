TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++0x -pthread -static-libstdc++
LIBS += -pthread

SOURCES += \
    inMotion.cpp

HEADERS += \
    include/csv.h
