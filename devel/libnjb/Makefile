# $NetBSD: Makefile,v 1.7 2018/02/10 13:53:47 khorben Exp $
#

DISTNAME=		libnjb-2.2.6
PKGREVISION=		3
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libnjb/}

MAINTAINER=		ku3@sl.aanet.ru
HOMEPAGE=		http://libnjb.sourceforge.net/
COMMENT=		Communicating with some Creative and Dell audio players
LICENSE=		modified-bsd

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES+=	c c++

PKGCONFIG_OVERRIDE+=	libnjb.pc.in

.include "../../mk/curses.buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/libusb.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
