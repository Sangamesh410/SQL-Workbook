1) LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE COMM IS NULL;
--------------------------------------------------------------------
2) LIST ALL THE EMPLOYEES WHO DON’T HAVE A REPORTING MANAGER
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB<>'MANAGER';

	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB NOT IN 'MANAGER';

	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB !='MANAGER';
--------------------------------------------------------------------
3) LIST ALL THE SALESMEN IN DEPT 30
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE DEPTNO=30 AND JOB ='CLERK';
--------------------------------------------------------------------
4) LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND HAVING SALARY 
	GREATER THAN 1500
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB='CLERK' AND SAL>500;
--------------------------------------------------------------------
5) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘S’ OR ‘A’
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%';
--------------------------------------------------------------------
6) LIST ALL THE EMPLOYEES EXCEPT THOSE WHO
ARE WORKING IN DEPT 10 &amp; 20.
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE DEPTNO IN (10,20);
--------------------------------------------------------------------
7) LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH ‘S’
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE ENAME NOT LIKE 'S%';
--------------------------------------------------------------------
8) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB='MANAGER' AND DEPTNO=10;
--------------------------------------------------------------------
9) LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE COMM IS NULL AND JOB='CLERK';
--------------------------------------------------------------------
10) LIST ALL THE EMPLOYEES WHO DON’T HAVE A
REPORTING MANAGER IN DEPTNO 10 OR 30
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB NOT IN 'MANAGER' AND DEPTNO IN (10,30);
--------------------------------------------------------------------
11) LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB IN 'SALESMAN' AND DEPTNO IN 30 AND SAL>450;
--------------------------------------------------------------------
12) LIST ALL THE ANALYST IN DEPT NUMBER 20
AND HAVING SALARY GREATER THAN 2500
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB IN 'ANALYST' AND DEPTNO IN 20 AND SAL>1500;
--------------------------------------------------------------------
13) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘M’ OR ‘J’
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE ENAME LIKE 'M%' AND ENAME LIKE 'M%';
--------------------------------------------------------------------
14) LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN
DEPT 30
	SQL> SELECT EMP.*,SAL*12 ANNUAL_SAL
	  2  FROM EMP
	  3  WHERE DEPTNO NOT IN 30;
--------------------------------------------------------------------
15) LIST THE EMPLOYEES WHOSE NAME DOES NOT
END WITH ‘ES’ OR ‘R’
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE ENAME NOT LIKE '%ES' OR ENAME NOT LIKE '%R';
--------------------------------------------------------------------
16) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH
10% HIKE IN SALARY
	SQL> SELECT EMP.*,SAL*1.1 HIKE
	  2  FROM EMP
	  3  WHERE DEPTNO IN  10;
--------------------------------------------------------------------
17) DISPLAY ALL THE EMPLOYEE WHO ARE ‘SALESMAN’S HAVING ‘E’ AS THE LAST BUT ONE
CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE ENAME LIKE '%E_' AND SAL LIKE '____';
--------------------------------------------------------------------
18) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED AFTER YEAR 81
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE HIREDATE >'31-DEC-81';
--------------------------------------------------------------------
19) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE HIREDATE LIKE '%-FEB-%' AND HIREDATE LIKE '%-FEB-%';
--------------------------------------------------------------------
20) LIST THE EMPLOYEES WHO ARE NOT WORKING AS MANAGERS AND CLERKS IN DEPT 10 AND 20
WITH A SALARY IN THE RANGE OF 1000 TO 3000
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE JOB NOT IN ('MANAGER','CLERK') AND DEPTNO IN (10,20) AND SAL BETWEEN 1000 AND 3000;
--------------------------------------------------------------------
21) LIST THE EMPLOYEES WHOSE SALARY NOT IN THE RANGE OF 1000 TO 2000 AND WORKING IN DEPT
10,20 OR 30 EXCEPT ALL SALESMEN
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE SAL NOT BETWEEN 1000 AND 2000 AND DEPTNO IN (10,20,30) AND JOB NOT IN 'SALESMEN';
--------------------------------------------------------------------
22) LIST THE DEPARTMENT NAMES WHICH ARE HAVING LETTER ‘O’ IN THEIR LOCATIONS AS WELL
AS THEIR DEPARTMENT NAMES
	SQL> SELECT ENAME,JOB
	  2  FROM EMP
	  3  WHERE ENAME LIKE '%A%' AND JOB LIKE '%A%';
--------------------------------------------------------------------
23) DISPLAY ALL THE EMPLOYEES WHOSE JOB HAS STRING ‘MAN’ IN IT.
	SQL> SELECT ENAME,JOB
	  2  FROM EMP
	  3  WHERE JOB LIKE '%MAN%';
--------------------------------------------------------------------
24)LIST THE EMPLOYEES WHO ARE HIRED AFTER 82 AND BEFORE 87.
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE HIREDATE  BETWEEN '31-DEC-81' AND '01-JAN-87';
--------------------------------------------------------------------
25)WAQTD ALL THE DETAILS OF EMPLOYEES HIRED IN NOVEMBER AND DECEMBER.
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE HIREDATE LIKE '%-NOV-%' OR HIREDATE LIKE '%-DEC-%';
--------------------------------------------------------------------
26)LIST ALL THE EMPLOYEE NAMES AND COMISSION FOR THOSE EMPLOYEES WHO 
EARN COMISSION MORE THAN THEIR SALARY
	SQL> SELECT *
	  2  FROM EMP
	  3  WHERE COMM>SAL;
--------------------------------------------------------------------
27)WAQTD NAME AND DESIGNATION FOR ALL THE EMPLOYEES HAVING REPORTING MANAGERS AND
ALSO THRIE NAMES STARTING WITH ‘S’
	SQL> SELECT ENAME,JOB
	  2  FROM EMP
	  3  WHERE JOB IN 'MANAGER' AND ENAME LIKE 'S%';
--------------------------------------------------------------------
28)WAQTD NAME AND SALARY OF ALL THE EMPLOYEES IF THEIR ANNUAL SALARY ENDS WITH ‘0’ .
	SQL> SELECT ENAME,SAL
	  2  FROM EMP
	  3  WHERE SAL LIKE '%0';
--------------------------------------------------------------------
29)WAQTD NAME OF THE EMPLOYEE HAVING ATLEAST 2L’s IN HIS NAME .
	SQL> SELECT ENAME
	  2  FROM EMP
	  3  WHERE ENAME LIKE '%L%L%';
--------------------------------------------------------------------
30)WAQTD NAME OF THE EMPLOYEES WHOS NAME STARTS WITH A ‘VOWEL’
	SQL> SELECT *
	  2  FROM STUDENT
	  3  WHERE SNAME LIKE 'A%'  OR SNAME LIKE 'E%'OR SNAME LIKE 'I%'OR SNAME LIKE 'O%'OR SNAME LIKE 'U%';
--------------------------------------------------------------------
						------THANK YOU------