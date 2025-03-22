package Stack;

#
# Copyright 2022 Meteo-France
# All rights reserved
# philippe.marguinaud@meteo.fr
#


use Fxtran;
use strict;
use Data::Dumper;
use Scope;

sub iniStack
{
  my ($do_jlon, $indent, $stack84, $JBLKMIN, $KGPBLKS) = @_;

  if ($stack84)
    {
      for my $size (4, 8)
        {
          $do_jlon->insertAfter (&s ("YLSTACK%U${size} = stack_u${size} (YSTACK, JBLK-$JBLKMIN+1, $KGPBLKS)"), $do_jlon->firstChild);
          $do_jlon->insertAfter (&t ("\n" . (' ' x $indent)), $do_jlon->firstChild);
          $do_jlon->insertAfter (&s ("YLSTACK%L${size} = stack_l${size} (YSTACK, JBLK-$JBLKMIN+1, $KGPBLKS)"), $do_jlon->firstChild);
          $do_jlon->insertAfter (&t ("\n" . (' ' x $indent)), $do_jlon->firstChild);
        }
    }
  else
    {
      $do_jlon->insertAfter (&s ("YLSTACK%U = stack_u (YSTACK, JBLK-$JBLKMIN+1, $KGPBLKS)"), $do_jlon->firstChild);
      $do_jlon->insertAfter (&t ("\n" . (' ' x $indent)), $do_jlon->firstChild);
      $do_jlon->insertAfter (&s ("YLSTACK%L = stack_l (YSTACK, JBLK-$JBLKMIN+1, $KGPBLKS)"), $do_jlon->firstChild);
      $do_jlon->insertAfter (&t ("\n" . (' ' x $indent)), $do_jlon->firstChild);
    }


}

sub addStack
{
  my ($d, %opts) = @_;

  my @KLON = @{ $opts{KLON} || [qw (KLON YDCPG_OPTS%KLON)] };

  my @pointer = @{ $opts{pointer} || [] };

  my $skip = $opts{skip};
  my $local = exists $opts{local} ? $opts{local} : 1;

  my @call = &F ('.//call-stmt[string(procedure-designator)!="ABOR1" and string(procedure-designator)!="REDUCE"]', $d);

  my %contained = map { ($_, 1) } &F ('.//subroutine-N[count(ancestor::program-unit)>1]', $d, 1);

  my $YLSTACK = $local ? 'YLSTACK' : 'YDSTACK';

  for my $call (@call)
    {
      my ($proc) = &F ('./procedure-designator', $call, 1);
      next if ($proc eq 'DR_HOOK');
      next if ($contained{$proc});
      next if ($proc =~ m/%/o);
      if ($skip)
        {
          next if ($skip->($proc, $call));
        }
      my ($argspec) = &F ('./arg-spec', $call);

      for my $size (4, 8)
        {
          my $arg = &n ('<arg/>');
          $arg->appendChild (&n ("<arg-N n=\"YDSTACK_L$size\"><k>YDSTACK_L$size</k></arg-N>"));
          $arg->appendChild (&t ('='));
          $arg->appendChild (&e ("${YLSTACK}_L$size"));
          $argspec->appendChild (&t (', '));
          $argspec->appendChild ($arg);
        }
    }

  my ($dummy_arg_lt) = &F ('.//subroutine-stmt/dummy-arg-LT', $d);

  my @args = &F ('./arg-N', $dummy_arg_lt, 1);

  my $last = $args[-1];

  for my $size (4, 8)
    {
      $dummy_arg_lt->appendChild (&t (', '));
      $dummy_arg_lt->appendChild (&n ("<arg-N><N><n>YDSTACK_L$size</n></N></arg-N>"));
    }

  my ($use) = &F ('.//use-stmt[last()]', $d);
  $use->parentNode->insertAfter (&n ("<include>#include &quot;<filename>stack.h</filename>&quot;</include>"), $use);
  $use->parentNode->insertAfter (&t ("\n"), $use);
  $use->parentNode->insertAfter (&s ("USE STACK_MOD"), $use);
  $use->parentNode->insertAfter (&t ("\n"), $use);
  $use->parentNode->insertAfter (&s ("USE ABOR1_ACC_MOD"), $use);
  $use->parentNode->insertAfter (&t ("\n"), $use);

  my ($decl) = &F ('.//T-decl-stmt[.//EN-N[string(.)="?"]]', $last, $d);

  for my $size (4, 8)
    {
      if ($local)
        {
          $decl->parentNode->insertAfter (&s ("INTEGER*8 :: YLSTACK_L$size"), $decl);
          $decl->parentNode->insertAfter (&t ("\n"), $decl);
        }
     
      $decl->parentNode->insertAfter (&s ("INTEGER*8 :: YDSTACK_L$size"), $decl);
      $decl->parentNode->insertAfter (&t ("\n"), $decl);
    }

  
  my $noexec = &Scope::getNoExec ($d);

  my $C = &n ("<C/>");

  $noexec->parentNode->insertAfter (&t ("\n"), $noexec);
  $noexec->parentNode->insertAfter ($C, $noexec);

  for my $size (4, 8)
    {
      if ($local)
        {
          $C->parentNode->insertBefore (&t ("\n"), $C);
          $C->parentNode->insertBefore (&t ("\n"), $C);
          $C->parentNode->insertBefore (&s ("YLSTACK_L$size = YDSTACK_L$size"), $C);
          $C->parentNode->insertBefore (&t ("\n"), $C);
          $C->parentNode->insertBefore (&t ("\n"), $C);
        }
    }


  my %args = map { ($_, 1) } @args;

  for my $KLON (@KLON)
    {
      my @en_decl = &F ('.//T-decl-stmt'
                      . '//EN-decl[./array-spec/shape-spec-LT/shape-spec[string(./upper-bound)="?"]]', 
                      $KLON, $d);
      

      for my $en_decl (@en_decl)
        {
          my ($n) = &F ('./EN-N', $en_decl, 1);

          next if ($args{$n});

          my $stmt = &Fxtran::stmt ($en_decl);
      
          my ($t) = &F ('./_T-spec_',   $stmt);     &Fxtran::expand ($t); $t = $t->textContent;
          my ($s) = &F ('./array-spec', $en_decl);  &Fxtran::expand ($s); $s = $s->textContent;
      
          if ($local)
            {
              $stmt->parentNode->insertBefore (my $temp = &t ("temp ($t, $n, $s)"), $stmt);
      
              if (&Fxtran::removeListElement ($en_decl))
                {
                  $stmt->unbindNode ();
                }
              else
                {
                  $temp->parentNode->insertAfter (&t ("\n"), $temp);
                }
      
              if (! grep { $n eq $_ } @pointer)
                {
                  if ($opts{stack84})
                    {
                      my ($if) = &fxtran::parse (fragment => << "EOF");
IF (KIND ($n) == 8) THEN
  alloc8 ($n)
ELSEIF (KIND ($n) == 4) THEN
  alloc4 ($n)
ELSE
  STOP 1
ENDIF
EOF
                      $C->parentNode->insertBefore ($if, $C);
                      $C->parentNode->insertBefore (&t ("\n"), $C);
                    }
                  else
                    {
                      $C->parentNode->insertBefore (&t ("alloc ($n)\n"), $C);
                    }

                }
            }
          else
            {
              die "No local stack, but KLON arrays were found";
            }

        }

    }

  $C->unbindNode ();

}

1;
