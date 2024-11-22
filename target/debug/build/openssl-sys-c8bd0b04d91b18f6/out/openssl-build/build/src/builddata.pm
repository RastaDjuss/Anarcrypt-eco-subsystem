package OpenSSL::safe::installdata;

use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(
    @PREFIX
    @libdir
    @BINDIR @BINDIR_REL_PREFIX
    @LIBDIR @LIBDIR_REL_PREFIX
    @INCLUDEDIR @INCLUDEDIR_REL_PREFIX
    @APPLINKDIR @APPLINKDIR_REL_PREFIX
    @ENGINESDIR @ENGINESDIR_REL_LIBDIR
    @MODULESDIR @MODULESDIR_REL_LIBDIR
    @PKGCONFIGDIR @PKGCONFIGDIR_REL_LIBDIR
    @CMAKECONFIGDIR @CMAKECONFIGDIR_REL_LIBDIR
    $VERSION @LDLIBS
);

our @PREFIX                     = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src' );
our @libdir                     = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src' );
our @BINDIR                     = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/apps' );
our @BINDIR_REL_PREFIX          = ( 'apps' );
our @LIBDIR                     = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src' );
our @LIBDIR_REL_PREFIX          = ( '' );
our @INCLUDEDIR                 = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/include', '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/include' );
our @INCLUDEDIR_REL_PREFIX      = ( 'include', './include' );
our @APPLINKDIR                 = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/ms' );
our @APPLINKDIR_REL_PREFIX      = ( 'ms' );
our @ENGINESDIR                 = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/engines' );
our @ENGINESDIR_REL_LIBDIR      = ( 'engines' );
our @MODULESDIR                 = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src/providers' );
our @MODULESDIR_REL_LIBDIR      = ( 'providers' );
our @PKGCONFIGDIR               = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src' );
our @PKGCONFIGDIR_REL_LIBDIR    = ( '.' );
our @CMAKECONFIGDIR             = ( '/Users/justinlanouette/Anarcrypt-eco-subsystem/target/debug/build/openssl-sys-c8bd0b04d91b18f6/out/openssl-build/build/src' );
our @CMAKECONFIGDIR_REL_LIBDIR  = ( '.' );
our $VERSION                    = '3.4.0';
our @LDLIBS                     =
    # Unix and Windows use space separation, VMS uses comma separation
    $^O eq 'VMS'
    ? split(/ *, */, ' ')
    : split(/ +/, ' ');

1;
