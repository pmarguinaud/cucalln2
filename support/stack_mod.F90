MODULE STACK_MOD

USE PARKIND1, ONLY : JPRB, JPIM, JPIA

IMPLICIT NONE

TYPE STACK_DATA
  REAL (KIND=4), POINTER :: ZDATA4 (:,:,:,:)
  REAL (KIND=8), POINTER :: ZDATA8 (:,:,:,:)
  INTEGER*8 :: IALIGN
CONTAINS
END TYPE

TYPE STACK
  INTEGER*8 :: L4
  INTEGER*8 :: U4
  INTEGER*8 :: L8
  INTEGER*8 :: U8
END TYPE

TYPE (STACK_DATA) :: YSTACK
PUBLIC :: STACK, YSTACK

CONTAINS

END MODULE

