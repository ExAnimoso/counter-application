# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = counter_application

CONFIG += sailfishapp

SOURCES += src/counter_application.cpp

OTHER_FILES += qml/counter_application.qml \
    qml/cover/CoverPage.qml \
    rpm/counter_application.changes.in \
    rpm/counter_application.spec \
    rpm/counter_application.yaml \
    translations/*.ts \
    counter_application.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/counter_application-de.ts

DISTFILES += \
    tests/tst_counter.qml \
    icons/108x108/counter_application.png \
    icons/128x128/counter_application.png \
    icons/256x256/counter_application.png \
    icons/86x86/counter_application.png \
    tests/SailfishTestCase.qml \
    qml/CounterApplication.qml \
    qml/pages/CounterPage.qml

tests.files = tests/*
tests.path = /usr/share/counter_application/tests
INSTALLS += tests
