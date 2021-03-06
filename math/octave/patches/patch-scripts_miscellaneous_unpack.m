$NetBSD: patch-scripts_miscellaneous_unpack.m,v 1.1 2017/08/01 11:06:18 maya Exp $

Unpack with bsdtar. if we get PaxHeaders.1234 files, we trip an octave-forge
sanity check

--- scripts/miscellaneous/unpack.m.orig	2016-11-13 15:16:10.000000000 +0000
+++ scripts/miscellaneous/unpack.m
@@ -174,15 +174,15 @@ function filelist = unpack (file, dir = 
                        'bzip2 -d -f "%s"', ...
                        @__parse_bzip2__, true};
     commandlist.bz = commandlist.bz2;
-    commandlist.tar = {'tar xvf "%s"', ...
-                       'tar xf "%s"', ...
+    commandlist.tar = {'bsdtar xvf "%s"', ...
+                       'bsdtar xf "%s"', ...
                        @__parse_tar__, false};
-    commandlist.targz = {'gzip -d -c "%s" | tar xvf -', ...
-                         'gzip -d -c "%s" | tar xf -', ...
+    commandlist.targz = {'gzip -d -c "%s" | bsdtar xvf -', ...
+                         'gzip -d -c "%s" | bsdtar xf -', ...
                          @__parse_tar__, false};
     commandlist.tgz = commandlist.targz;
-    commandlist.tarbz2 = {'bzip2 -d -c "%s" | tar xvf -', ...
-                          'bzip2 -d -c "%s" | tar xf -', ...
+    commandlist.tarbz2 = {'bzip2 -d -c "%s" | bsdtar xvf -', ...
+                          'bzip2 -d -c "%s" | bsdtar xf -', ...
                           @__parse_tar__, false};
     commandlist.tarbz = commandlist.tarbz2;
     commandlist.tbz2 = commandlist.tarbz2;
