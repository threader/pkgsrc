# $NetBSD: Makefile,v 1.6 2017/09/24 14:35:08 wiz Exp $

DISTNAME=	mptopdf
PKGNAME=	tex-${DISTNAME}-2017
TEXLIVE_REV=	44856

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://ctan.org/pkg/pdf-mps-supp
COMMENT=	Script to convert mpost to PDF

CONFLICTS+=	tex-supp-pdf<2010
DEPENDS+=	tex-kpathsea-[0-9]*:../../print/tex-kpathsea
DEPENDS+=	tex-plain>=3.141592653nb2:../../print/tex-plain
DEPENDS+=	web2c>=2010:../../print/web2c
SUPERSEDES+=	tex-supp-pdf<2010

INSTALLATION_DIRS=	bin

TEX_FORMATS+=		"mptopdf pdftex -translate-file=cp227.tcx mptopdf.tex\\n"

.include "../../print/texlive/package.mk"

post-install:
	${LN} -sf pdftex ${DESTDIR}${PREFIX}/bin/mptopdf

.include "../../mk/bsd.pkg.mk"
