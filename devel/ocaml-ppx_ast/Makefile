# $NetBSD: Makefile,v 1.3 2018/01/10 15:54:02 jaapb Exp $

VERSION=	0.9.2
GITHUB_PROJECT=	ppx_ast
GITHUB_TAG=	v${VERSION}
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=janestreet/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/janestreet/ppx_ast/
COMMENT=	AST used in ppx_core/ppx_driver PPX rewriters
LICENSE=	apache-2.0

USE_LANGUAGES=	# none
OCAML_USE_FINDLIB=	yes
OCAML_USE_JBUILDER=	yes

.include "../../mk/ocaml.mk"
.include "../../devel/ocaml-compiler-libs/buildlink3.mk"
.include "../../devel/ocaml-migrate-parsetree/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
