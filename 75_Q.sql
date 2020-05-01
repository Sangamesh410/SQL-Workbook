//SQL QUERYES//
-----------------------------------------------------------------------------------------------
'1.DISPLAY ALL THE EMPLOYEES WHOSE DEPARTMET NAMES ENDING 'S''
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4 			      FROM DEPT
  5                   WHERE DNAME LIKE '%S');
-----------------------------------------------------------------------------------------------
'2.QUERY TO DISPLAY THE EMPLOYEE NAMES WHO IS HAVING MAXIMUM SALARY IN DEPT NAME ACCOUNTING'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL = (SELECT MAX(SAL) FROM EMP) AND
  4  DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'ACCOUNTING');
-----------------------------------------------------------------------------------------------
'3.QUERY TO DISPLAY THE DEPT NAME WHO IS HAVING HIGHEST COMMISSION'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE COMM = (SELECT MAX(COMM) FROM EMP));
-----------------------------------------------------------------------------------------------
'4.QUERY TO DISPLAY THE EMPLOYEE NAMES WHOSE DEPARTMENT NAME HAS 2ND CHARACTER AS 'O''.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME LIKE '_O%');
-----------------------------------------------------------------------------------------------
'5.QUERY TO DISPLAY ALL THE EMPLOYEES WHO’S DEPT NUMBER IS SAME AS SCOTT.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'SCOTT');
-----------------------------------------------------------------------------------------------
'6.QUERY TO DISPLAY ALL THE EMPLOYEES IN OPERATIONS AND ACCOUNTING DEPT.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME IN ('OPERATION','ACCOUNTING'));
-----------------------------------------------------------------------------------------------
'7.LIST THE EMPLOYEES WHO HAS SALARY GREATER THAN MILLER'
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'MILLER');
-----------------------------------------------------------------------------------------------
'8.LIST DEPARTMENT NAME HAVING ATLEAST 3 SALESMAN'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE JOB = 'SALESMAN'
  6                     GROUP BY DEPTNO
  7                     HAVING COUNT(JOB)>3);
-----------------------------------------------------------------------------------------------
'9.DISPLAY THE DNAME OF AN EMPLOYEES WHO HAS NO REPORTING MANAGER.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4						FROM EMP 
  5						WHERE MGR NOT IN (SELECT EMPNO 
  6											FROM EMP 
  7											WHERE JOB IN 'MANAGER'));
-----------------------------------------------------------------------------------------------
'10.LIST ALL THE EMPLOYEES WHO ARE REPORTING TO JONES MANAGER'
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR IN (SELECT EMPNO
  4             FROM EMP
  5             WHERE ENAME IN 'JONES');
-----------------------------------------------------------------------------------------------
'11.LIST EMPLOYEES FROM RESEARCH&ACCOUNTING HAVING ATLEAST 2 REPORTING.'
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO =
  3  (SELECT DEPTNO FROM DEPT WHERE DNAME IN ('ACCOUNTING','RESEARCH')
  4  AND DEPTNO IN (SELECT DEPTNO FROM EMP
  5  GROUP BY DEPTNO HAVING COUNT(MGR) >= 2));
-----------------------------------------------------------------------------------------------
'12.DISPLAY THE DEPARTNAME OF THE EMPLOYEE WHOSE NAME DOES NOT STARTS WITH S AND SALARY BETWEEN 
1500 TO 3000.'
|SQL>SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  					FROM EMP
  5  					WHERE ENAME NOT LIKE 'S%' AND 
  6 					SAL BETWEEN 1500 AND 3000);
-----------------------------------------------------------------------------------------------
'13.DISPLAY LOCATION OF EMPLOYEE WHOSE SALARY IS MINIMUM SALARY BUT SALARY IS GREATER THAN 2000'
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP
  4  WHERE SAL =(SELECT MIN(SAL) FROM EMP WHERE SAL>2000));
-----------------------------------------------------------------------------------------------
'14. DISPLAY THE LOCATION OF AN EMPLOYEE IN ACCOUNTING DEPARTMENT.'
SQL> SELECT LOC FROM DEPT WHERE DEPTNO IN
  2  (SELECT DEPTNO FROM EMP WHERE DEPTNO =
  3  (SELECT DEPTNO FROM DEPT WHERE DNAME='ACCOUNTING'));
-----------------------------------------------------------------------------------------------
'15. DISPLAY THE DEPARTMENT ‘S LOCATION THAT IS HAVING GREATER THAN FOUR EMPLOYEES IN IT.'
SQL> SELECT LOC,DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (  SELECT DEPTNO
  5  					FROM EMP
  6  					GROUP BY DEPTNO
  7  					HAVING COUNT(*)>4);
-----------------------------------------------------------------------------------------------
'16. WRITE A QUERY TO DISPLAY ALL THE EMPLOYEE WHOSE JOB NOT SAME AS ALLEN AND SALARY IS GREATER
 THAN MARTIN.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB NOT IN (SELECT JOB 
  4						FROM EMP 
  5						WHERE ENAME IN 'ALLEN') AND
  6  SAL > (SELECT SAL 
  7			FROM EMP 
  8			WHERE ENAME IN 'MARTIN');
-----------------------------------------------------------------------------------------------
'17. DISPLAY ALL THE EMPLOYEES WHO IS HAVING LOCATION IS SAME AS ADAMS MANAGER?'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DEPTNO IN
  4  (SELECT DEPTNO FROM EMP WHERE ENAME IN 'ADAMS' AND DEPTNO IN
  5  (SELECT DEPTNO FROM EMP WHERE JOB IN 'MANAGER')));
-----------------------------------------------------------------------------------------------
'18. DISPLAY THE JOB, MANAGER NUMBER OF EMPLOYEES WHO IS WORKING FOR JONES?'
SQL> SELECT JOB,MGR
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME IN 'JONES') AND
  4   JOB NOT IN 'MANAGER';
-----------------------------------------------------------------------------------------------
'19. DISPLAY THE EMPLOYEE NAMES, HIGHER DATE, COMMISSION OF FORDS MANAGER?'
SQL> SELECT ENAME,HIREDATE,COMM
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME IN 'FORD') AND JOB IN 'MANAGER';
-----------------------------------------------------------------------------------------------
'20. DISPLAY THE NUMBER OF EMPLOYEES WHO ARE GETTING SALARY LESS THAN THE BLAKES MANAGER'
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE SAL < ( SELECT SAL FROM EMP WHERE ENAME IN 'BLAKE' AND JOB IN 'MANAGER');
-----------------------------------------------------------------------------------------------
'21. LIST EMPLOYEES WHO LOCATED IN CHICAGO AND THEIR COMMISSION IS ZERO.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC IN 'CHICAGO')
  4  AND COMM IN 0;
-----------------------------------------------------------------------------------------------
'22. LIST EMPLOYEES WHO WORK FOR SALES DEPARTMENT AND THEIR SALARY GREATER THAN AVERAGE SALARY 
OF THEIR DEPARTMENT.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME = 'SALES')
  4  AND SAL>(SELECT AVG(SAL) 
  5				FROM EMP 
  6				WHERE DEPTNO=(SELECT DEPTNO 
  7								FROM DEPT 
  8								WHERE DNAME = 'SALES'));

-----------------------------------------------------------------------------------------------
'23. LIST EMPLOYEES WHO ARE WORKING IN RESEARCH DEPARTMENT AND THEY ARE MANAGER.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM DEPT
  5                     WHERE DNAME IN 'RESEARCH') AND
  6  JOB IN 'MANAGER';
-----------------------------------------------------------------------------------------------
'24. DISPLAY DEPARTMENT NAME OF THE EMPLOYEES WHO EARN COMMISSION.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE COMM IS NOT NULL);
-----------------------------------------------------------------------------------------------
'25. DISPLAY DEPARTMENT NAME OF THE EMPLOYEE WHO EARN MAXIMUM SALARY AND HAVE NO 
	REPORTING MANAGER.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4					  FROM EMP 
  5					  WHERE SAL=(SELECT MAX(SAL) 
  6								 FROM EMP) AND MGR NOT IN (SELECT EMPNO
  7															FROM EMP
  8															WHERE JOB IN 'MANAGER'));
-----------------------------------------------------------------------------------------------
'26. DISPLAY EMPLOYEE DETAILS WHO ARE REPORTING TO BLAKE AND HAVE COMMISSION WITHOUT 
USING NULL OR NOT NULL'
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR IN (SELECT EMPNO
  4             FROM EMP
  5             WHERE ENAME IN 'BLAKE') AND
  6             COMM > 0;

  SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR IN (SELECT EMPNO
  4             FROM EMP
  5             WHERE ENAME IN 'BLAKE') AND
  6             COMM >= 0;
-----------------------------------------------------------------------------------------------
'27. LIST ALL THE DEPTNAME AND LOC OF ALL THE SALESMAN MANAGER-MANAGERS'
SQL> SELECT DNAME,LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (
  4				SELECT DEPTNO 
  5				FROM EMP 
  6				WHERE JOB IN 'SALESMAN') AND DEPTNO IN (SELECT DEPTNO 
  7														FROM EMP 
  8														WHERE JOB IN 'MANAGER');
  -----------------------------------------------------------------------------------------------
'28. LIST THE EMPLOYEE DEPTNAME AND LOC OF ALL THE EMPLOYEES WHO ARE CLERK ,REPORTING TO BLAKE 
AND SALARY IS LESSER THAN MARTIN SALARY'
SQL> SELECT DNAME,LOC,DEPTNO
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4						FROM EMP 
  5						WHERE JOB = 'CLERK' AND 
  6		   	SAL< (SELECT SAL 
  7			FROM EMP 
  8			WHERE ENAME IN 'BLAKE') AND 
  9			MGR IN (SELECT EMPNO 	
  10					FROM EMP 
  11					WHERE ENAME IN 'BLAKE'));
-----------------------------------------------------------------------------------------------
'29. LIST THE EMPLOYEES WHO DOES NOT DIRECTLY REPORT TO PRESIDENT,HAVE COMMISSION AND 
SALARY MORE THAN MAX SALARY OF ALL THE CLERK WITHOUT USING NULL OR NOT NULL'
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR NOT IN (SELECT EMPNO
  4  FROM EMP
  5  WHERE JOB IN 'PRESIDENT') AND
  6  COMM >=0 AND SAL > (SELECT MAX(SAL)
  7  FROM EMP
  8  WHERE JOB IN 'CLERK');
-----------------------------------------------------------------------------------------------
'30. LIST THE EMPLOYEES WHO JOINED AFTER 2 YEARS OF FIRST EMPLOYEE OF THE COMPANY AND 
MORE THAN BLAKE SALARY'
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE >ALL  (SELECT MIN(HIREDATE)+750 
  4							FROM EMP)
  5  AND SAL > (SELECT SAL 
  6				FROM EMP 
  7				WHERE ENAME IN 'BLAKE');
-----------------------------------------------------------------------------------------------
'31. DISPLAY LOCATION OF ALL THE EMPLOYEES WHO REPORTING TO BLAKE'
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  5	 				FROM EMP 
  6					WHERE MGR NOT IN (SELECT EMPNO 
  7									FROM EMP 
  8									WHERE ENAME IN 'BLAKE'));
-----------------------------------------------------------------------------------------------
'32. LIST ALL THE EMPLOYEES WHOSE JOB IS SAME AS JONES AND THEIR SALARY LESSER THAN SCOTT'
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB IN (SELECT JOB FROM EMP WHERE ENAME IN 'JONES') AND
  4  SAL< (SELECT SAL FROM EMP WHERE ENAME IN 'SCOTT');
-----------------------------------------------------------------------------------------------
'33.DISPLAY ALL THE EMPLOYEES OF DEPARTMENT 30, 20 WITH THERE ANUAL SALARY AND HAVING 
ATLEAST 3 EMPLOYEES'
SQL> SELECT EMP.*,SAL*12 ANNUAL_SAL
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE DEPTNO IN (20,30)
  6                     GROUP BY DEPTNO
  7                     HAVING COUNT(*)>3);
-----------------------------------------------------------------------------------------------
'34.DISPLAY ALL THE EMPLOYEES WHO ARE EARN LESS THAN ANY OF THE SALESMAN?'
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL<ALL(SELECT SAL 
  4				FROM EMP 
  5				WHERE JOB IN 'SALESMAN');
-----------------------------------------------------------------------------------------------
'35.DISPLAY ALL THE EMPLOYEES WHO ARE JOINED BEFORE THE LAST PERSON?'
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE < ALL(SELECT MAX(HIREDATE)
  4                     FROM EMP);
-----------------------------------------------------------------------------------------------
'35.FIND 3RD MINIMUM SALARY IN THE EMPLOYEE TABLE.'
SQL> SELECT MIN(SAL)
  2  FROM EMP
  3  WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE SAL >
  4  (SELECT MIN(SAL) FROM EMP));
-----------------------------------------------------------------------------------------------
'36.DISPLAY ALL THE EMPLOYEES WHO ARE EARNING MORE THAN ANY OF THE MANAGER.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL > ANY (SELECT SAL
  4                     FROM EMP
  5                     WHERE JOB IN 'MANAGER');
-----------------------------------------------------------------------------------------------
'37.LIST EMPLOYEES WHO JOINED AFTER 4 YEARS OF 1ST EMPLOYEE OF THE COMPANY AND LESS THAN 
BLAKE SALARY.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE > (SELECT MIN(HIREDATE)+1456 FROM EMP);
-----------------------------------------------------------------------------------------------
'38. DISPLAY THE DEPARTMENT INFORMATION OF EMPLOYEE WHO IS WORKING FOR NEW YORK LOCATION'
SQL> SELECT *
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4					FROM EMP 
  5					WHERE DEPTNO IN (SELECT DEPTNO 
  6									FROM DEPT 
  7									WHERE LOC IN 'NEW YORK'));
-----------------------------------------------------------------------------------------------
'39.DISPLAY LOCATION OF EMPLOYEES, WHOSE NAME DOESNT START WITH A AND SALARY BETWEEN 1000 
AND 3000.'
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4  				FROM EMP 
  5					WHERE ENAME NOT LIKE 'A%' AND 
  6					SAL BETWEEN 1000 AND 3000);
-----------------------------------------------------------------------------------------------
'40. DISPLAY DEPARTMENT NAME OF ALL THE EMPLOYEES WHO ARE REPORTING TO BLAKE.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4             FROM EMP
  5             WHERE MGR IN (SELECT EMPNO
  6                             FROM EMP
  7                             WHERE ENAME IN 'BLAKE'));
-----------------------------------------------------------------------------------------------
'41. DISPLAY MARTINS MANAGERS MANAGERS DEPARTMENT NAME AND  LOCATION.'

SQL> SELECT DNAME,LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE MGR IN 
  4				(SELECT MGR FROM EMP WHERE MGR IN 
  5				(SELECT MGR FROM EMP WHERE ENAME IN 'MARTIN')));
-----------------------------------------------------------------------------------------------
'42.DISPLAY THE MANAGER NUMBER,JOB AND DEPARTMENT NUMBER FOR THOSE WHO DONT HAVE 
COMMISSION IN THE LOCATION CHICAGO OR DALLAS'
SQL> SELECT MGR,JOB,DEPTNO
  2  FROM EMP
  3  WHERE COMM IS NOT NULL AND
  4  DEPTNO IN (SELECT DEPTNO   FROM DEPT
  5             WHERE LOC IN 'CHICAGO');
-----------------------------------------------------------------------------------------------
'43.DISPLAY THE EMPLOYEE DETAILS WITH THEIR ANNUAL SALARY WHO EARN MAXIMUM COMMISSION'
SQL> SELECT EMP.*,SAL*12 ANNUAL_SAL
  2  FROM EMP
  3  WHERE COMM IN (SELECT MAX(COMM)
  4             FROM EMP);
-----------------------------------------------------------------------------------------------
'44.DISPLAY ALL THE EMPLOYEE WHOSE DEPARTMENT IS SALES AND WHO IS EARNING SOME COMMISSION 
(I.E COMMISSION IS NOT NULL OR ZERO)AND WHO IS HIRED BEFORE THE LAST PERSON HIRED.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM DEPT
  5                     WHERE DNAME IN 'SALES') AND
  6  COMM IS NOT NULL AND
  7  HIREDATE > ALL (SELECT MAX(HIREDATE)
  8                     FROM EMP);
-----------------------------------------------------------------------------------------------
'45.DISPLAY ALL THE DEPARTMENT NAMES FOR WARD MANAGERS MANAGER '
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4             FROM EMP
  5             WHERE EMPNO IN (SELECT MGR FROM EMP WHERE ENAME IN 'WARD'));
-----------------------------------------------------------------------------------------------
'46:DISPLAY DEPARTMENT NAMES OF EMPLOYEES WHOSE SALARY IS GREATER THAN AVERAGE SALARY OF 
ALL THE CLERKS'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE SAL > (SELECT AVG(SAL)
  6                                     FROM EMP
  7                                     WHERE JOB IN 'CLERK'));
-----------------------------------------------------------------------------------------------
'47.DISPLAY THE LAST EMPLOYEE RECORD WITH 25% HIKE IN SALARY.'
SQL> SELECT EMP.*,SAL*1.25 HIKE_SAL
  2  FROM EMP
  3  WHERE HIREDATE IN (SELECT MIN(HIREDATE)
  4                     FROM EMP);
-----------------------------------------------------------------------------------------------
'48.DISPLAY THE DEPARTMENT NUMBER WHO WORKING IN SALES DEPARTMENT AND THEY ARE MANAGER.'
SQL> SELECT DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM DEPT
  5                     WHERE DNAME IN 'SALES') AND
  6  JOB IN 'MANAGER';
-----------------------------------------------------------------------------------------------
'49.DISPLAY DEPARTMENT NAME OF THE EMPLOYEE WHO EARN MINMUM SALARY AND HAVE REPORTING 
MANAGER.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE SAL IN (SELECT MIN(SAL) FROM EMP) AND
  6                     MGR IN (SELECT EMPNO FROM EMP WHERE JOB IN 'MANAGER'));
-----------------------------------------------------------------------------------------------
'50.DISPLAY HIREDATE AND JOB OF ALL THE EMPLOYEES WORKING FOR SALES'
SQL> SELECT HIREDATE,JOB
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO 
  4						FROM DEPT 
  5						WHERE DNAME IN 'SALES');
-----------------------------------------------------------------------------------------------
'51.DISPLAY LOCATION AND DNAME OF EMPLOYEE WHO WORKING AS PRESIDENT'
SQL> SELECT LOC,DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE JOB IN 'PRESIDENT');
-----------------------------------------------------------------------------------------------
'52.DISPLAY THE DNAME OF EMPLOYEES WHOES SALARY IS MAXIMUM SALARY BUT LESSER THAN 3000'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5                     WHERE SAL IN (SELECT MAX(SAL)
  6                                     FROM EMP) AND
  7                             SAL > 3000);
-----------------------------------------------------------------------------------------------
'53.DISPLAY THE DEPARTMENT NAME WHO ARE REPORTING TO ADAMS.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                      FROM EMP
  5                      WHERE MGR IN (SELECT EMPNO
  6                                      FROM EMP
  7                                      WHERE ENAME IN 'ADAMS'));
-----------------------------------------------------------------------------------------------
'54.DISPLAY LAST EMPLOYEE RECORD ACCORDING TO EMPNO.'
SQL> SELECT *
  2  FROM EMP
  3  WHERE EMPNO IN (SELECT MAX(EMPNO)
  4                     FROM EMP);
-----------------------------------------------------------------------------------------------
'55.DISPLAY ALL THE EMPLOYEE WHOSE SALARY IS GREATER THAN AVERAGE SALARY OF DEPARTMENT 30.'
SQL> SELECT *
  2  FROM EMP
  3   WHERE SAL > (SELECT AVG(SAL)
  4                     FROM EMP
  5                     WHERE DEPTNO IN 30);
-----------------------------------------------------------------------------------------------
'56.DISPLAY THE NUMBER OF EMPLOYEES WHO WORK FOR RESEARCH DEPT AND THEIR SALARY IS LESSER 
THAN ONE OF THE SALARY IN DEPARTMENT IN 10.'
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM DEPT
  5                     WHERE DNAME IN 'RESEARCH') AND
  6  SAL < ANY (SELECT SAL
  7             FROM EMP
  8             WHERE DEPTNO IN 10);
-----------------------------------------------------------------------------------------------
'57.DISPLAY THE DNAME THAT ARE HAVING CLERK IN IT.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4             FROM EMP
  5             WHERE JOB IN 'CLERK');
-----------------------------------------------------------------------------------------------
'58.DISPLAY THE DEPARTMENT NAMES THAT ARE HAVING ATLEAST ONE L IN IT.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME LIKE '%L%');
-----------------------------------------------------------------------------------------------
'59. DISPLAY ALL THE EMPLOYEES WHO ARE JOINED AFTER BLAKE.'

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE > ALL (SELECT HIREDATE
  4  						FROM EMP
  5  						WHERE ENAME IN 'BLAKE');
-----------------------------------------------------------------------------------------------
'60. LIST THE DEPT NAME THAT ARE HAVING AT LEAST 3 EMPLOYEES BUT NOT MORE THAN 5 EMPLOYEES
 IN IT.'
 SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5  					GROUP BY DEPTNO
  6                     HAVING COUNT(*) BETWEEN 3 AND 5);
-----------------------------------------------------------------------------------------------
'61. DISPLAY THE LOCATION OF ALL EMPLOYEES WHOSE REPORTING MANAGER SALARY IS GREATER THAN 2000.'
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5  WHERE MGR IN (SELECT MGR
  6                     FROM EMP
  7                     WHERE SAL > 2000));
-----------------------------------------------------------------------------------------------
'62.SELECT THE EMPLOYEES WHOSE DNAME IS HAVING AT LEAST TWO 'E' IN IT.'
SQL> SELECT DNAME 
2	FROM DEPT 
3	WHERE DEPTNO IN (SELECT DEPTNO 
4					FROM DEPT 
5					WHERE DNAME LIKE '%E%E%');
-----------------------------------------------------------------------------------------------
'63.DISPLAY ENAME,SAL OF EMPLOYEES WHO ARE EARNING MORE THAN ANY OF THE ANALYST.'
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL > ANY (SELECT SAL
  4                     FROM EMP
  5                     WHERE JOB IN 'ANALYST')
-----------------------------------------------------------------------------------------------
'64.SELECT ALL THE EMPLOYEES WHO ARE WORKING FOR CHICAGO'

SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM DEPT
  5                     WHERE LOC IN 'CHICAGO');
-----------------------------------------------------------------------------------------------
'65. QUERY TO DISPLAY EMPLOYEE NAMES WHO IS HAVING MINIMUM SALARY IN DEPARTMENT RESEARCH.'
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL IN (SELECT MIN(SAL)
  4                     FROM EMP
  5                     WHERE DEPTNO IN (SELECT DEPTNO
  6                                     FROM DEPT
  7                                     WHERE DNAME IN 'RESEARCH'));
-----------------------------------------------------------------------------------------------
'66.LIST THE DEPARTMENT NAMES THAT ARE HAVING SALESMAN.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  FROM EMP
  5  WHERE JOB IN 'SALESMAN');
-----------------------------------------------------------------------------------------------
'67. LIST THE DEPARTMENT NAMES THAT ARE HAVING AT LEAST 3 EMPLOYES IN IT.'
SQL> SELECT DNAME
  2  FROM DEPT
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4                     FROM EMP
  5     				GROUP BY DEPTNO
  6                     HAVING COUNT(*)>3);
-----------------------------------------------------------------------------------------------
'68.LIST EMPLOYEES FROM RESEARCH AND ACCOUNTING DEPARTMENT HAVING ATLEAST TWO REPORTING'
SQL>  SELECT *
  2   FROM EMP
  3   WHERE DEPTNO IN (SELECT DEPTNO
  4                      FROM DEPT
  5                      WHERE DNAME IN ('RESEARCH','ACCOUNTING'))
  6   					 AND DEPTNO IN (SELECT DEPTNO
  7  									FROM EMP
  8  									GROUP BY DEPTNO
  9  									HAVING COUNT(MGR) > 2);
-----------------------------------------------------------------------------------------------
'69.WRITE A QUERY TO DISPLAY EMPLOYEE NAME, JOB,LOCATION OF ALL EMPLOYEES WHO ARE WORKING AS 
MANAGER AND WORKS AT CHICAGO.'
SQL> SELECT ENAME,JOB
  2  FROM EMP
  3  WHERE JOB IN 'MANAGER' AND DEPTNO IN (SELECT DEPTNO
  4                                     FROM DEPT
  5                                     WHERE LOC IN 'CHICAGO');
-----------------------------------------------------------------------------------------------
'70. SELECT ENAME OF EMPLOYEE WHO EARNS 2ND MAX SALARY AND WORKS FOR LOCATION DALLAS.'
SQL>  SELECT ENAME
  2   FROM EMP
  3   WHERE SAL IN (SELECT MAX(SAL)
  4  				FROM EMP
  5  				WHERE SAL < (SELECT MAX(SAL)
  6  							FROM EMP)) AND
  7   DEPTNO IN (SELECT DEPTNO
  8  			FROM DEPT
  9  			WHERE LOC IN 'DALLAS');
-----------------------------------------------------------------------------------------------
'71. WRITE A QUERY TO DISPLAY THE EMPLOYEE INFORMATION WHO IS NOT TAKING COMMISSION AND 
 JOINED COMPANY AFTER JULY 83.'
 SQL> SELECT *
  2  FROM EMP
  3  WHERE COMM IN(SELECT COMM
  4  				FROM EMP
  5  				WHERE COMM IS NOT NULL)
  6  				AND HIREDATE > ALL (SELECT HIREDATE
  7  									FROM EMP
  8  									WHERE HIREDATE LIKE '%-JULY-83');
-----------------------------------------------------------------------------------------------
'72.LIST EMPLOYEES FROM SALES AND RESEARCH DEPARTMENT HAVING ATLEAST 2 REPORTING EMPLOYEES .'
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN (SELECT DEPTNO
  4  				FROM DEPT
  5  				WHERE DNAME IN ('SALES','RESEARCH'))
  6  AND DEPTNO IN (SELECT DEPTNO
  7  				FROM EMP
  8  				GROUP BY DEPTNO
  9  				HAVING COUNT(MGR) > 2);
-----------------------------------------------------------------------------------------------
'73.LIST EMPLOYEES WHO HAVE COMMISSION GREATER THAN MAXIMUM SALARY OF ALL THE SALESMAN AND 
WHO DO NOT REPORT TO KING DIRECTLY .'
SQL>  SELECT *
  2   FROM EMP
  3   WHERE SAL > (SELECT MAX(SAL)
  4              FROM EMP
  5              WHERE JOB IN 'SALESMAN') AND
  6   MGR NOT IN (SELECT EMPNO 
  7					FROM EMP 
  8					WHERE ENAME IN 'KING');
-----------------------------------------------------------------------------------------------
'74.DISPLAY THE LOCATION OF ALL THE DEAPRTMENTS WHICH HAVE EMPLOYEES JOINED IN THE YEAR 81'
-----------------------------------------------------------------------------------------------
'75.DISPLAY DEPARTMENT WISE MINIMUM SALARY WHICH IS LESS THAN AVERAGE SALARY OF EMPLOYEES.'