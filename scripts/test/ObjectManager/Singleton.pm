# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package scripts::test::ObjectManager::Singleton;    ## no critic

use strict;
use warnings;

use Kernel::System::ObjectManager;

our %ObjectManagerFlags = (
    Singleton => 1,
);
our @ObjectDependencies = ();

sub new {
    my ( $Class, %Param ) = @_;
    bless \%Param, $Class;
    return \%Param;
}

1;