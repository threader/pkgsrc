# $NetBSD: Makefile,v 1.11 2018/01/28 17:05:20 wiz Exp $

DISTNAME=	libpagemaker-0.0.4
CATEGORIES=	converters
MASTER_SITES=	http://dev-www.libreoffice.org/src/libpagemaker/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://wiki.documentfoundation.org/DLP/Libraries/libpagemaker
COMMENT=	Library and utilities for Adobe PageMaker files
LICENSE=	mpl-2.0

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++11

CONFIGURE_ARGS+=	--without-docs

PKGCONFIG_OVERRIDE+=	libpagemaker.pc.in
BUILDLINK_TRANSFORM+=	rm:-Werror

.include "../../converters/librevenge/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
