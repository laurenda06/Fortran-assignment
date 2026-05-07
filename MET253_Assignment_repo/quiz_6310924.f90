!MENSAH-TUAH LAURENDA
!INDEX NUMBER:6310924
PROGRAM student_report
IMPLICIT NONE
!The i helps me to declare my loop variable
INTEGER:i
!The slashes is put there to intialize the array
INTEGER,DIMENSION(10) ::score=(/85,62,45,91,38,74,55,88,61,47/)
!The (LEN=1) allows me to input only one letter
CHARACTER(LEN=1)::Grade
CHARACTER(LEN=12)::remark
!The print student report is to display the program title
PRINT*,'student report'
!The print no. score grade remark is to display the table headings
PRINT*,'No.  score  grade  remark'
DO i=1,10
!The i helps to check each student's score
IF(score(i)>=80 .AND. score(i)<=100)THEN
!grade= helps me to assign a value to the variable grade
grade='A'
!remark= heps me to assign a cooment to the variable remark
remark='Distinction'
ELSE IF(score(i)>=60 .AND. score(i)<=79)THEN
grade='B'
remark='Credit'
ELSE IF(score(i)>=40 .AND. score(i)<=59)THEN
grade='C'
remark='Pass'
ELSE 
grade='F'
remark='Fail'
END IF
!The write format helps me output the program in a tabular form
WRITE(*,'(I2,5X,I3,6X,A1,6X,A12)')i,score(i),grade,remark
END DO
END PROGRAM student_report
