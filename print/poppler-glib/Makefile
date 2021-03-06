# $NetBSD: Makefile,v 1.69 2018/01/12 23:44:05 wiz Exp $

.include "../../print/poppler/Makefile.common"

PKGNAME=	poppler-glib-${POPPLER_VERS}
PKGREVISION=	1

COMMENT=	PDF rendering library (GLib wrapper)
MAINTAINER=	reed@reedmedia.net

CONFLICTS+=		poppler<0.4.5nb1

PKGCONFIG_OVERRIDE+=	${WRKSRC}/poppler-glib.pc.cmake

USE_TOOLS+=	python

# Build the cairo graphics backend, required by glib.
CMAKE_ARGS+=	-DCMAKE_DISABLE_FIND_PACKAGE_CAIRO=FALSE
# Don't build the splash graphics backend.
CMAKE_ARGS+=	-DENABLE_SPLASH=OFF
# Don't compile GTK+ test program.
CMAKE_ARGS+=	-DBUILD_GTK_TESTS=OFF
# Compile GLib wrapper which also needs gtk2
CMAKE_ARGS+=	-DENABLE_GLIB=ON
# Do not generate glib API documentation.
CMAKE_ARGS+=	-DENABLE_GTK_DOC=OFF
# Don't build and install the tools
CMAKE_ARGS+=	-DENABLE_UTILS=OFF
# Don't compile poppler cpp wrapper.
CMAKE_ARGS+=	-DENABLE_CPP=OFF
# Don't compile poppler qt4 wrapper.
CMAKE_ARGS+=	-DENABLE_QT4=OFF
# Don't compile poppler qt5 wrapper.
CMAKE_ARGS+=	-DENABLE_QT5=OFF
# Don't build libcurl based HTTP support. ## might want to include
CMAKE_ARGS+=	-DENABLE_LIBCURL=OFF

# enable for verbose build messages
#CMAKE_ARGS+=	-DCMAKE_VERBOSE_MAKEFILE:BOOL=TRUE

CFLAGS.FreeBSD+=	-DLLONG_MAX=__LLONG_MAX

BUILDLINK_API_DEPENDS.poppler+=     poppler-${POPPLER_VERS}{,nb*}
.include "../../print/poppler/buildlink3.mk"

INSTALL_DIRS=		glib

INSTALLATION_DIRS+=	lib/pkgconfig

post-install:
	${INSTALL_DATA} ${WRKSRC}/poppler-cairo.pc ${DESTDIR}${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/poppler-glib.pc ${DESTDIR}${PREFIX}/lib/pkgconfig

.include "../../lang/python/tool.mk"
BUILDLINK_ABI_DEPENDS.glib2+=	glib2>=2.41.0
.include "../../devel/glib2/buildlink3.mk"
#.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
