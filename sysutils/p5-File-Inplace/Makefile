# $NetBSD: Makefile,v 1.6 2017/09/16 19:27:08 wiz Exp $
#

DISTNAME=	File-Inplace-0.20
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~chipt/File-Inplace/
COMMENT=	Perl module for in-place editing of files
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/File/Inplace/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
