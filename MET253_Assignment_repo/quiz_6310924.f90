!MENSAH-TUAH LAURENDA
!INDEX NUMBER:6310924
PROGRAM student_report
IMPLICIT NONE
INTEGER::i
INTEGER,DIMENSION(10)::scores=(/85,62,45,91,38,74,55,88,61,47/)
CHARACTER(LEN=1)::grade
CHARACTER(LEN=12)::remark
PRINT*,'student report'
PRINT*,'No.  score  grade  remark'
DO i=1,10
IF(score(i)>=80 .AND. score(i)<=100)THEN
grade='A'
remark='Distinction'
ELSE IF(score(i)>=60 .AND.score(i)<=79)THEN
grade='B'
remark='Credit'
ELSE IF(score(i)>=40 .AND. score(i)<=59)THEN
grade='C'
remark='Pass'
ELSE 
grade='F'
remark='Fail'
END IF
WRITE(*,'(I2,5X,I3,6X,A1,6X,A12)')i,score(i),grade,remark
END DO
END PROGRAM student_report
