#
# Makefile.PL for script "cpan-upload"
#
# Filename:     Makefile.PL
# Author:       $Author: neilb $
# RCS ID:       $Id: Makefile.PL,v 1.5 2002/01/29 17:02:31 neilb Exp $
# Created:      22 March 1998
#

use ExtUtils::MakeMaker;

&WriteMakefile(
               NAME          => 'cpan-upload-http',
               EXE_FILES     => [ 'cpan-upload-http' ],
               DISTNAME      => 'cpan-upload-http',
               ABSTRACT      => 'upload file(s) to CPAN using HTTP POSTs to PAUSE, not FTP',
               VERSION_FROM  => 'cpan-upload-http',
               PREREQ_PM     => {
                   'AppConfig::Std'        => 1.05,
                   'Pod::Usage'            => 1.14,
                   'HTTP::Request::Common' => 0,
                   'File::Basename'        => 2.28,
                   'Term::ReadKey'         => 0,
               },
               dist          => {COMPRESS => 'gzip', SUFFIX => 'gz'},
               );
