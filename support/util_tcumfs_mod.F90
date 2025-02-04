MODULE UTIL_TCUMFS_MOD

USE YOMCUMFS, ONLY : TCUMFS

INTERFACE SAVE
MODULE PROCEDURE SAVE_TCUMFS
END INTERFACE

INTERFACE LOAD
MODULE PROCEDURE LOAD_TCUMFS
END INTERFACE

INTERFACE COPY
MODULE PROCEDURE COPY_TCUMFS
END INTERFACE

INTERFACE HOST
MODULE PROCEDURE HOST_TCUMFS
END INTERFACE

     
INTERFACE CRC64
MODULE PROCEDURE CRC64_TCUMFS
END INTERFACE

INTERFACE WIPE
MODULE PROCEDURE WIPE_TCUMFS
END INTERFACE

INTERFACE SIZE
MODULE PROCEDURE SIZE_TCUMFS
END INTERFACE


CONTAINS

SUBROUTINE SAVE_TCUMFS (KLUN, YD)

IMPLICIT NONE
INTEGER, INTENT (IN) :: KLUN
TYPE (TCUMFS), INTENT (IN), TARGET :: YD

WRITE (KLUN) YD%LECUMFS
WRITE (KLUN) YD%LREGCV
WRITE (KLUN) YD%LMFCFL2_SHSTEP
END SUBROUTINE

SUBROUTINE LOAD_TCUMFS (KLUN, YD)

IMPLICIT NONE
INTEGER, INTENT (IN) :: KLUN
TYPE (TCUMFS), INTENT (OUT), TARGET :: YD

READ (KLUN) YD%LECUMFS
READ (KLUN) YD%LREGCV
READ (KLUN) YD%LMFCFL2_SHSTEP
END SUBROUTINE


SUBROUTINE COPY_TCUMFS (YD, LDCREATED, LDFIELDAPI)

IMPLICIT NONE
TYPE (TCUMFS), INTENT (IN), TARGET :: YD
LOGICAL, OPTIONAL, INTENT (IN) :: LDCREATED, LDFIELDAPI
LOGICAL :: LLCREATED
LOGICAL :: LLFIELDAPI

LLFIELDAPI = .FALSE.
IF (PRESENT (LDFIELDAPI)) THEN
  LLFIELDAPI = LDFIELDAPI
ENDIF
LLCREATED = .FALSE.
IF (PRESENT (LDCREATED)) THEN
  LLCREATED = LDCREATED
ENDIF
IF (.NOT. LLCREATED) THEN
  !$acc enter data create (YD)
  !$acc update device (YD)
ENDIF



END SUBROUTINE

SUBROUTINE HOST_TCUMFS (YD)

IMPLICIT NONE
TYPE (TCUMFS), TARGET :: YD




END SUBROUTINE

     

SUBROUTINE CRC64_TCUMFS (YD, KLUN, CDPATH)
USE CRC64_INTRINSIC

IMPLICIT NONE
TYPE (TCUMFS), TARGET :: YD
INTEGER, INTENT (IN) :: KLUN
CHARACTER(LEN=*), INTENT (IN) :: CDPATH
CHARACTER(LEN=128) :: CLIND

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LECUMFS), CDPATH//'%LECUMFS'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LREGCV), CDPATH//'%LREGCV'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFCFL2_SHSTEP), CDPATH//'%LMFCFL2_SHSTEP'

END SUBROUTINE

SUBROUTINE WIPE_TCUMFS (YD, LDDELETED, LDFIELDAPI)

IMPLICIT NONE
TYPE (TCUMFS), INTENT (IN), TARGET :: YD
LOGICAL, OPTIONAL, INTENT (IN) :: LDDELETED, LDFIELDAPI
LOGICAL :: LLDELETED
LOGICAL :: LLFIELDAPI

LLFIELDAPI = .FALSE.
IF (PRESENT (LDFIELDAPI)) THEN
  LLFIELDAPI = LDFIELDAPI
ENDIF



LLDELETED = .FALSE.
IF (PRESENT (LDDELETED)) THEN
  LLDELETED = LDDELETED
ENDIF
IF (.NOT. LLDELETED) THEN
  !$acc exit data delete (YD)
ENDIF
END SUBROUTINE

INTEGER*8 FUNCTION SIZE_TCUMFS (YD, CDPATH, LDPRINT) RESULT (KSIZE)

IMPLICIT NONE
TYPE (TCUMFS),     INTENT (IN), TARGET :: YD
CHARACTER(LEN=*), INTENT (IN), OPTIONAL :: CDPATH
LOGICAL,          INTENT (IN), OPTIONAL :: LDPRINT
INTEGER*8 :: ISIZE, JSIZE
LOGICAL :: LLPRINT
CHARACTER(LEN=128) :: CLPATH

LLPRINT = .FALSE.
IF (PRESENT (LDPRINT)) THEN
  LLPRINT = LDPRINT
ENDIF
CLPATH=''
IF (PRESENT (CDPATH)) THEN
  CLPATH = CDPATH
ENDIF
KSIZE = 0
ISIZE = KIND (YD%LECUMFS)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LECUMFS'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LREGCV)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LREGCV'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFCFL2_SHSTEP)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFCFL2_SHSTEP'
ENDIF
KSIZE = KSIZE + ISIZE
END FUNCTION

END MODULE
