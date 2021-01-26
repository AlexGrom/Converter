QT += quick

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DEFINES += PROJECT_PATH=\"\\\"$${_PRO_FILE_PWD_}/\\\"\"

linux-g++*{
}

win32{
}


macx{
    LIBS += -L$$PWD/PDFNetCMac/Lib/ -lPDFNetC
    INCLUDEPATH += $$PWD/PDFNetCMac/Headers
    DEPENDPATH += $$PWD/PDFNetCMac/Lib
}


ios{
    LIBS += -F/Users/user/Converter/PDFNetIOS/Framework-dynamic/
    LIBS += -framework PDFNet

    pdfnet.files = /Users/user/Converter/PDFNetIOS/Framework-dynamic/PDFNet.framework/
    pdfnet.path = Frameworks
    QMAKE_BUNDLE_DATA += pdfnet
    QMAKE_LFLAGS += -rpath @executable_path/Frameworks

    INCLUDEPATH += $$PWD/PDFNetIOS/Framework-dynamic/PDFNet.framework/C_CPP_Headers
}

android{
}

