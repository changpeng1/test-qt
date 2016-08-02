#############################################################################
# Makefile for building: untitled1
# Generated by qmake (2.01a) (Qt 4.8.7) on: ?? 8? 2 10:02:56 2016
# Project:  untitled1.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -o Makefile untitled1.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		dialog.cpp \
		form.cpp \
		mywidget.cpp \
		mydialog.cpp \
		mypushbutton.cpp moc_mainwindow.cpp \
		moc_dialog.cpp \
		moc_form.cpp \
		moc_mywidget.cpp \
		moc_mydialog.cpp \
		moc_mypushbutton.cpp
OBJECTS       = main.o \
		mainwindow.o \
		dialog.o \
		form.o \
		mywidget.o \
		mydialog.o \
		mypushbutton.o \
		moc_mainwindow.o \
		moc_dialog.o \
		moc_form.o \
		moc_mywidget.o \
		moc_mydialog.o \
		moc_mypushbutton.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		untitled1.pro
QMAKE_TARGET  = untitled1
DESTDIR       = 
TARGET        = untitled1

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h ui_dialog.h ui_form.h ui_mywidget.h ui_mydialog.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: untitled1.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile untitled1.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile untitled1.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/untitled11.0.0 || $(MKDIR) .tmp/untitled11.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/untitled11.0.0/ && $(COPY_FILE) --parents mainwindow.h dialog.h form.h mywidget.h mydialog.h mypushbutton.h .tmp/untitled11.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp dialog.cpp form.cpp mywidget.cpp mydialog.cpp mypushbutton.cpp .tmp/untitled11.0.0/ && $(COPY_FILE) --parents mainwindow.ui dialog.ui form.ui mywidget.ui mydialog.ui .tmp/untitled11.0.0/ && (cd `dirname .tmp/untitled11.0.0` && $(TAR) untitled11.0.0.tar untitled11.0.0 && $(COMPRESS) untitled11.0.0.tar) && $(MOVE) `dirname .tmp/untitled11.0.0`/untitled11.0.0.tar.gz . && $(DEL_FILE) -r .tmp/untitled11.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp moc_dialog.cpp moc_form.cpp moc_mywidget.cpp moc_mydialog.cpp moc_mypushbutton.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_dialog.cpp moc_form.cpp moc_mywidget.cpp moc_mydialog.cpp moc_mypushbutton.cpp
moc_mainwindow.cpp: dialog.h \
		form.h \
		mywidget.h \
		mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_dialog.cpp: dialog.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) dialog.h -o moc_dialog.cpp

moc_form.cpp: form.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) form.h -o moc_form.cpp

moc_mywidget.cpp: mywidget.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mywidget.h -o moc_mywidget.cpp

moc_mydialog.cpp: mydialog.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mydialog.h -o moc_mydialog.cpp

moc_mypushbutton.cpp: mypushbutton.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mypushbutton.h -o moc_mypushbutton.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h ui_dialog.h ui_form.h ui_mywidget.h ui_mydialog.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h ui_dialog.h ui_form.h ui_mywidget.h ui_mydialog.h
ui_mainwindow.h: mainwindow.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic mainwindow.ui -o ui_mainwindow.h

ui_dialog.h: dialog.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic dialog.ui -o ui_dialog.h

ui_form.h: form.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic form.ui -o ui_form.h

ui_mywidget.h: mywidget.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic mywidget.ui -o ui_mywidget.h

ui_mydialog.h: mydialog.ui \
		mypushbutton.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic mydialog.ui -o ui_mydialog.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp mainwindow.h \
		dialog.h \
		form.h \
		mywidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		dialog.h \
		form.h \
		mywidget.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

dialog.o: dialog.cpp dialog.h \
		ui_dialog.h \
		mainwindow.h \
		form.h \
		mywidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o dialog.o dialog.cpp

form.o: form.cpp form.h \
		ui_form.h \
		mainwindow.h \
		dialog.h \
		mywidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o form.o form.cpp

mywidget.o: mywidget.cpp mywidget.h \
		ui_mywidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mywidget.o mywidget.cpp

mydialog.o: mydialog.cpp mydialog.h \
		ui_mydialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mydialog.o mydialog.cpp

mypushbutton.o: mypushbutton.cpp mypushbutton.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mypushbutton.o mypushbutton.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_dialog.o: moc_dialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_dialog.o moc_dialog.cpp

moc_form.o: moc_form.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_form.o moc_form.cpp

moc_mywidget.o: moc_mywidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mywidget.o moc_mywidget.cpp

moc_mydialog.o: moc_mydialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mydialog.o moc_mydialog.cpp

moc_mypushbutton.o: moc_mypushbutton.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mypushbutton.o moc_mypushbutton.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

