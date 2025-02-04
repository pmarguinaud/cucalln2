MODULE UTIL_TECUMF2_MOD

USE YOECUMF2, ONLY : TECUMF2

INTERFACE SAVE
MODULE PROCEDURE SAVE_TECUMF2
END INTERFACE

INTERFACE LOAD
MODULE PROCEDURE LOAD_TECUMF2
END INTERFACE

INTERFACE COPY
MODULE PROCEDURE COPY_TECUMF2
END INTERFACE

INTERFACE HOST
MODULE PROCEDURE HOST_TECUMF2
END INTERFACE

     
INTERFACE CRC64
MODULE PROCEDURE CRC64_TECUMF2
END INTERFACE

INTERFACE WIPE
MODULE PROCEDURE WIPE_TECUMF2
END INTERFACE

INTERFACE SIZE
MODULE PROCEDURE SIZE_TECUMF2
END INTERFACE


CONTAINS

SUBROUTINE SAVE_TECUMF2 (KLUN, YD)

IMPLICIT NONE
INTEGER, INTENT (IN) :: KLUN
TYPE (TECUMF2), INTENT (IN), TARGET :: YD

WRITE (KLUN) YD%ENTRORG2
WRITE (KLUN) YD%DETRPEN2
WRITE (KLUN) YD%ENTSHALP2
WRITE (KLUN) YD%ENTSTPC12
WRITE (KLUN) YD%ENTSTPC22
WRITE (KLUN) YD%ENTSTPC32
WRITE (KLUN) YD%ENTRDD2
WRITE (KLUN) YD%RMFCMIN2
WRITE (KLUN) YD%RMFDEPS2
WRITE (KLUN) YD%RDEPTHS2
WRITE (KLUN) YD%RPRCON2
WRITE (KLUN) YD%RTAU2
WRITE (KLUN) YD%RCPECONS2
WRITE (KLUN) YD%RCUCOV2
WRITE (KLUN) YD%RTAUMEL2
WRITE (KLUN) YD%RUVPER2
WRITE (KLUN) YD%RMFSOLCT2
WRITE (KLUN) YD%RMFSOLTQ2
WRITE (KLUN) YD%RMFSOLUV2
WRITE (KLUN) YD%RMFSOLRHS2
WRITE (KLUN) YD%RMFCFL2
WRITE (KLUN) YD%RMFLIA2
WRITE (KLUN) YD%RCAPDCYCL2
WRITE (KLUN) YD%RTAU02
WRITE (KLUN) YD%LMFMID2
WRITE (KLUN) YD%LMFDD2
WRITE (KLUN) YD%LMFDUDV2
WRITE (KLUN) YD%LMFUVDIS2
WRITE (KLUN) YD%LMFWETB2
WRITE (KLUN) YD%LMFGLAC2
WRITE (KLUN) YD%NJKT12
WRITE (KLUN) YD%NJKT22
WRITE (KLUN) YD%NJKT32
WRITE (KLUN) YD%NJKT52
WRITE (KLUN) YD%NJKT62
END SUBROUTINE

SUBROUTINE LOAD_TECUMF2 (KLUN, YD)
USE PARKIND1, ONLY : JPRD

IMPLICIT NONE
INTEGER, INTENT (IN) :: KLUN
TYPE (TECUMF2), INTENT (OUT), TARGET :: YD
REAL(KIND=JPRD) :: ZTMP0
READ (KLUN) ZTMP0
YD%ENTRORG2 = ZTMP0
READ (KLUN) ZTMP0
YD%DETRPEN2 = ZTMP0
READ (KLUN) ZTMP0
YD%ENTSHALP2 = ZTMP0
READ (KLUN) ZTMP0
YD%ENTSTPC12 = ZTMP0
READ (KLUN) ZTMP0
YD%ENTSTPC22 = ZTMP0
READ (KLUN) ZTMP0
YD%ENTSTPC32 = ZTMP0
READ (KLUN) ZTMP0
YD%ENTRDD2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFCMIN2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFDEPS2 = ZTMP0
READ (KLUN) ZTMP0
YD%RDEPTHS2 = ZTMP0
READ (KLUN) ZTMP0
YD%RPRCON2 = ZTMP0
READ (KLUN) ZTMP0
YD%RTAU2 = ZTMP0
READ (KLUN) ZTMP0
YD%RCPECONS2 = ZTMP0
READ (KLUN) ZTMP0
YD%RCUCOV2 = ZTMP0
READ (KLUN) ZTMP0
YD%RTAUMEL2 = ZTMP0
READ (KLUN) ZTMP0
YD%RUVPER2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFSOLCT2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFSOLTQ2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFSOLUV2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFSOLRHS2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFCFL2 = ZTMP0
READ (KLUN) ZTMP0
YD%RMFLIA2 = ZTMP0
READ (KLUN) ZTMP0
YD%RCAPDCYCL2 = ZTMP0
READ (KLUN) ZTMP0
YD%RTAU02 = ZTMP0
READ (KLUN) YD%LMFMID2
READ (KLUN) YD%LMFDD2
READ (KLUN) YD%LMFDUDV2
READ (KLUN) YD%LMFUVDIS2
READ (KLUN) YD%LMFWETB2
READ (KLUN) YD%LMFGLAC2
READ (KLUN) YD%NJKT12
READ (KLUN) YD%NJKT22
READ (KLUN) YD%NJKT32
READ (KLUN) YD%NJKT52
READ (KLUN) YD%NJKT62
END SUBROUTINE


SUBROUTINE COPY_TECUMF2 (YD, LDCREATED, LDFIELDAPI)

IMPLICIT NONE
TYPE (TECUMF2), INTENT (IN), TARGET :: YD
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

SUBROUTINE HOST_TECUMF2 (YD)

IMPLICIT NONE
TYPE (TECUMF2), TARGET :: YD




































END SUBROUTINE

     

SUBROUTINE CRC64_TECUMF2 (YD, KLUN, CDPATH)
USE CRC64_INTRINSIC

IMPLICIT NONE
TYPE (TECUMF2), TARGET :: YD
INTEGER, INTENT (IN) :: KLUN
CHARACTER(LEN=*), INTENT (IN) :: CDPATH
CHARACTER(LEN=128) :: CLIND

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTRORG2), CDPATH//'%ENTRORG2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%DETRPEN2), CDPATH//'%DETRPEN2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTSHALP2), CDPATH//'%ENTSHALP2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTSTPC12), CDPATH//'%ENTSTPC12'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTSTPC22), CDPATH//'%ENTSTPC22'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTSTPC32), CDPATH//'%ENTSTPC32'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%ENTRDD2), CDPATH//'%ENTRDD2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFCMIN2), CDPATH//'%RMFCMIN2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFDEPS2), CDPATH//'%RMFDEPS2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RDEPTHS2), CDPATH//'%RDEPTHS2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RPRCON2), CDPATH//'%RPRCON2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RTAU2), CDPATH//'%RTAU2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RCPECONS2), CDPATH//'%RCPECONS2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RCUCOV2), CDPATH//'%RCUCOV2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RTAUMEL2), CDPATH//'%RTAUMEL2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RUVPER2), CDPATH//'%RUVPER2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFSOLCT2), CDPATH//'%RMFSOLCT2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFSOLTQ2), CDPATH//'%RMFSOLTQ2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFSOLUV2), CDPATH//'%RMFSOLUV2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFSOLRHS2), CDPATH//'%RMFSOLRHS2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFCFL2), CDPATH//'%RMFCFL2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RMFLIA2), CDPATH//'%RMFLIA2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RCAPDCYCL2), CDPATH//'%RCAPDCYCL2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%RTAU02), CDPATH//'%RTAU02'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFMID2), CDPATH//'%LMFMID2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFDD2), CDPATH//'%LMFDD2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFDUDV2), CDPATH//'%LMFDUDV2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFUVDIS2), CDPATH//'%LMFUVDIS2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFWETB2), CDPATH//'%LMFWETB2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%LMFGLAC2), CDPATH//'%LMFGLAC2'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%NJKT12), CDPATH//'%NJKT12'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%NJKT22), CDPATH//'%NJKT22'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%NJKT32), CDPATH//'%NJKT32'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%NJKT52), CDPATH//'%NJKT52'

WRITE (KLUN, '(Z16.16," ",A)') CRC64 (YD%NJKT62), CDPATH//'%NJKT62'

END SUBROUTINE

SUBROUTINE WIPE_TECUMF2 (YD, LDDELETED, LDFIELDAPI)

IMPLICIT NONE
TYPE (TECUMF2), INTENT (IN), TARGET :: YD
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

INTEGER*8 FUNCTION SIZE_TECUMF2 (YD, CDPATH, LDPRINT) RESULT (KSIZE)

IMPLICIT NONE
TYPE (TECUMF2),     INTENT (IN), TARGET :: YD
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
ISIZE = KIND (YD%ENTRORG2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTRORG2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%DETRPEN2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%DETRPEN2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%ENTSHALP2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTSHALP2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%ENTSTPC12)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTSTPC12'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%ENTSTPC22)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTSTPC22'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%ENTSTPC32)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTSTPC32'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%ENTRDD2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%ENTRDD2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFCMIN2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFCMIN2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFDEPS2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFDEPS2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RDEPTHS2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RDEPTHS2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RPRCON2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RPRCON2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RTAU2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RTAU2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RCPECONS2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RCPECONS2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RCUCOV2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RCUCOV2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RTAUMEL2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RTAUMEL2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RUVPER2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RUVPER2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFSOLCT2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFSOLCT2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFSOLTQ2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFSOLTQ2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFSOLUV2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFSOLUV2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFSOLRHS2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFSOLRHS2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFCFL2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFCFL2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RMFLIA2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RMFLIA2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RCAPDCYCL2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RCAPDCYCL2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%RTAU02)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%RTAU02'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFMID2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFMID2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFDD2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFDD2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFDUDV2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFDUDV2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFUVDIS2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFUVDIS2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFWETB2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFWETB2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%LMFGLAC2)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%LMFGLAC2'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%NJKT12)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%NJKT12'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%NJKT22)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%NJKT22'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%NJKT32)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%NJKT32'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%NJKT52)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%NJKT52'
ENDIF
KSIZE = KSIZE + ISIZE
ISIZE = KIND (YD%NJKT62)
IF (LLPRINT) THEN
  WRITE (*, '(I10," ")', ADVANCE='NO') ISIZE
  WRITE (*, *) TRIM (CLPATH)//'%NJKT62'
ENDIF
KSIZE = KSIZE + ISIZE
END FUNCTION

END MODULE
