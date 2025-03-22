package info_sfv;

#
# Copyright 2022 Meteo-France
# All rights reserved
# philippe.marguinaud@meteo.fr
#


use strict;
use Fxtran;
use Data::Dumper;

sub skip
{ 
  my $class = shift;
  my ($type, $comp, $attr, $en_decl_hash) = @_; 

  return 1 if ($comp =~ m/^P.*_T[019]$/o);
  return 1 if ($comp =~ m/^(?:F_GROUP|VARIABLE_GROUP|PGROUP)$/o);
  
  return $class->getFieldAPIMember (@_);
}

sub getFieldAPIMember
{
  my $class = shift;
  my ($type, $comp, $attr, $en_decl_hash) = @_; 

  return unless ($attr->{POINTER});
 
  substr ($comp, 0, 1, ''); 

  if (my $en_decl = $en_decl_hash->{"F_$comp"})
    {
      my $stmt = &Fxtran::stmt ($en_decl);
      my ($tspec) = &Fxtran::F ('./_T-spec_', $stmt);  
      my ($tname) = &F ('./derived-T-spec/T-N/N/n/text()', $tspec);
      return "F_$comp" if ($tname =~ m/^FIELD_/o);
    }
}

1;
