########################################################################
# Copyright (c) 1988-2022 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: urete.pri
#
# Author: $author$
#   Date: 3/30/2022
#
# os specific QtCreator project .pri file for framework urete
########################################################################
# Repository Depends: vmachinae
# Depends: urostra;unadir;ufila;ucrono

UNAME = $$system(uname)

contains(UNAME,Darwin) {
URETE_OS = macosx
} else {
contains(UNAME,Linux) {
URETE_OS = linux
} else {
URETE_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,URETE_OS) {
URETE_BUILD = $${URETE_OS}
} else {
URETE_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,URETE_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(URETE_OS,macosx) {
} else {
contains(URETE_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(URETE_OS,windows) {
} else {
} # contains(URETE_OS,windows)
} # contains(URETE_OS,linux)
} # contains(URETE_OS,macosx)

########################################################################
# urostra
UROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PKG_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PKG_BLD = $${OTHER_BLD}/$${UROSTRA_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_BLD}/lib
UROSTRA_LIB = $${UROSTRA_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_PRJ_BLD}/lib
#UROSTRA_LIB = $${URETE_LIB}
UROSTRA_LIB_NAME = $${UROSTRA_NAME}

# urostra LIBS
#
urostra_LIBS += \
-L$${UROSTRA_LIB}/lib$${UROSTRA_LIB_NAME} \
-l$${UROSTRA_LIB_NAME} \


########################################################################
# unadir
UNADIR_THIRDPARTY_PKG_MAKE_BLD = $${UNADIR_THIRDPARTY_PKG}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UNADIR_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PKG_BLD = $${UNADIR_THIRDPARTY_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UNADIR_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_PKG_BLD = $${OTHER_BLD}/$${UNADIR_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_PRJ_BLD = $${OTHER_BLD}/$${UNADIR_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PKG_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PRJ_BLD}/lib
UNADIR_LIB = $${UNADIR_PKG_BLD}/lib
#UNADIR_LIB = $${UNADIR_PRJ_BLD}/lib
#UNADIR_LIB = $${URETE_LIB}
UNADIR_LIB_NAME = $${UNADIR_NAME}

# unadir LIBS
#
unadir_LIBS += \
-L$${UNADIR_LIB}/lib$${UNADIR_LIB_NAME} \
-l$${UNADIR_LIB_NAME} \


########################################################################
# ufila
UFILA_THIRDPARTY_PKG_MAKE_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PKG_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PKG_BLD = $${OTHER_BLD}/$${UFILA_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PRJ_BLD = $${OTHER_BLD}/$${UFILA_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_BLD}/lib
UFILA_LIB = $${UFILA_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_PRJ_BLD}/lib
#UFILA_LIB = $${URETE_LIB}
UFILA_LIB_NAME = $${UFILA_NAME}

# ufila LIBS
#
ufila_LIBS += \
-L$${UFILA_LIB}/lib$${UFILA_LIB_NAME} \
-l$${UFILA_LIB_NAME} \


########################################################################
# ucrono
UCRONO_THIRDPARTY_PKG_MAKE_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PKG_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PKG_BLD = $${OTHER_BLD}/$${UCRONO_PKG}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_PRJ}/build/$${URETE_BUILD}/QtCreator/$${BUILD_CONFIG}
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_BLD}/lib
UCRONO_LIB = $${UCRONO_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_PRJ_BLD}/lib
#UCRONO_LIB = $${URETE_LIB}
UCRONO_LIB_NAME = $${UCRONO_NAME}

# ucrono LIBS
#
ucrono_LIBS += \
-L$${UCRONO_LIB}/lib$${UCRONO_LIB_NAME} \
-l$${UCRONO_LIB_NAME} \

########################################################################
# urete

# urete INCLUDEPATH
#
urete_INCLUDEPATH += \

# urete DEFINES
#
urete_DEFINES += \

# urete LIBS
#
urete_LIBS += \
$${ucrono_LIBS} \
$${ufila_LIBS} \
$${unadir_LIBS} \
$${urostra_LIBS} \
$${build_urete_LIBS} \

contains(URETE_OS,macosx|linux) {
urete_LIBS += \
-lpthread \
-ldl
} else {
} # contains(URETE_OS,macosx|linux)

contains(URETE_OS,linux) {
urete_LIBS += \
-lrt
} else {
} # contains(URETE_OS,linux)


