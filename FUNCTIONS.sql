FUNCTIONS
1>WAQTD NUMBER OF EMP GETTING SALARY LESS THAN 2000 IN DEPT NO 30
SQL> SELECT COUNT(*),COUNT(ENAME)
  2  FROM EMP
  3  WHERE SAL<2000 AND DEPTNO IN 30;
 ----------------------------------------------------------------------
2>WAQTD TOTAL SAL NEEDED TO PAY EMP WORKING AS CLERK
SQL> SELECT SUM(SAL)
  2  FROM EMP
  3  WHERE JOB IN 'CLERK';
 ----------------------------------------------------------------------
3>WAQTD AVERAGE SAL NEEDED TO PAY ALL EMPLOYEE
SQL> SELECT AVG(SAL) AVERAGE_SAL
  2  FROM EMP;
 ----------------------------------------------------------------------
4>WAQTD NUMBER OF EMP HAVING 'A' AS NAME IN 1ST CHAR
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE 'A%';
----------------------------------------------------------------------
5>WAQTD NUM OF EMP WORKING AS CLERK OR MANAGER
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB IN ('MANAGER','CLERK');
---------------------------------------------------------------------
6>WAQTD TOTAL SAL TO PAID EMP WHO HIRED ON FEB
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE HIREDATE LIKE '%-FEB-%';
 ----------------------------------------------------------------------
7>WAQTD TO COUNT TOTAL NO OF EMP WHOSE MGR IS 7839
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE MGR IN 7839;
 ----------------------------------------------------------------------
8>WAQTD NO OF EMP GETTING COMMISSION IN DEPT NO 30
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE COMM IS NOT NULL AND DEPTNO IN 30;
 ----------------------------------------------------------------------
9>WAQTD AVG SAL,TOTAL SAL,AND MAX SAL OF EMP WORKING AS MANAGER
SQL> SELECT AVG(SAL),SUM(SAL),MAX(SAL)
  2  FROM EMP
  3  WHERE JOB IN 'PRESIDENT';
----------------------------------------------------------------------
10>WAQTD NUM OF EMP HAVING 'A' IN THEIR NAME
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%';
----------------------------------------------------------------------
11>WAQTD NUM OF EMP AND TOTAL SAL NEEDED TO PAY THE EMP HAVAIN 2 Ls IN THEIR NAME
SQL> SELECT COUNT(*),SUM(SAL)
  2  FROM EMP
  3  WHERE ENAME LIKE '%L%L%';
----------------------------------------------------------------------
12>WAQTD NO OF DEPTS FRESENT IN THE EMP
SQL> SELECT COUNT(DEPTNO)
  2  FROM EMP;