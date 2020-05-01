							SINGLE ROW FUNCTIONS
1> CHARACTER SINGLE ROW FUNCTION 
	I)CASE MANIPULATION FUNCTION
		*)UPPER()
			SQL> SELECT UPPER(ENAME)
  			2  FROM EMP;					
		*)LOWER()
			SQL> SELECT LOWER(ENAME)
  			2  FROM EMP;
		*)INITCAP()
			SQL> SELECT INITCAP(ENAME)
  			2  FROM EMP;

  	II)CHATACTER MANIPULATION FUNCTION
		*)LENGTH()
			SQL> SELECT ENAME NAME,LENGTH(ENAME) LENGTH
			  2  FROM EMP;

			  		SQL> SELECT SAL
			  		  2  FROM EMP
			  		  3  WHERE LENGTH(SAL)>3;

			  		SQL> SELECT ENAME
			  		  2  FROM EMP
			  		  3  WHERE LENGTH(ENAME)=4;
		*)REVERSE()
				SQL> SELECT REVERSE(ENAME)
				  2  FROM EMP;

		*)SUBSTR()

  				SQL> SELECT ENAME,SUBSTR(ENAME,1,1),SUBSTR(ENAME,-1)
  				  2  FROM EMP;

  				SQL> SELECT ENAME,SUBSTR(ENAME,-3)
  				  2  FROM EMP
  				  3  WHERE JOB IN 'MANAGER';

  				SQL> SELECT ENAME
  				  2  FROM EMP
  				  3  WHERE SUBSTR(ENAME,-1) IN ('S','N');

  				SQL> SELECT ENAME
  				  2  FROM EMP
  				  3  WHERE SUBSTR(ENAME,1,1) IN ('A','E','I','O','U');

  				SQL> SELECT ENAME,SUBSTR(ENAME,1,LENGTH(ENAME)/2)
  				  2  FROM EMP;

  				SQL> SELECT ENAME,SUBSTR(ENAME,LENGTH(ENAME)/2+1)
  				  2  FROM EMP;

  				SQL> SELECT ENAME,SUBSTR(ENAME,2,LENGTH(ENAME)-2)
  				  2  FROM EMP;

  		*)INSTR()	

  				SQL> SELECT ENAME
  				  2  FROM EMP
  				  3  WHERE INSTR(ENAME,'A',1)>0;

  				SQL> SELECT ENAME,DNAME
  				  2  FROM EMP INNER JOIN DEPT
  				  3  ON EMP.DEPTNO = DEPT.DEPTNO
  				  4  WHERE INSTR(ENAME,'O',1)>0 AND INSTR(DNAME,'R',1)>0;

		*)REPLACE()

  				SQL> SELECT ENAME,REPLACE(ENAME,'A','X')
  				  2  FROM EMP;

		*)CONCAT()

  				SQL> SELECT CONCAT(ENAME,'HII') NAME
  				  2  FROM EMP;

  				SQL> SELECT CONCAT(ENAME,CONCAT(' ',SAL))
  				  2  FROM EMP;
  		*)LPAD()
			SQL> SELECT LPAD(SAL,3)
			  2  FROM EMP;

		*)RPAD()
			SQL> SELECT RPAD(SAL,3)
			  2  FROM EMP;

  		*)TRIM()
			SQL> SELECT TRIM('A' FROM ENAME)
			  2  FROM EMP;			


-----------------------------------------------------------------------------------------

2>DATE SINGLE ROW FUNCTION

		SQL> SELECT SYSTIMESTAMP
  		2  FROM EMP;

  		SQL> SELECT SYSDATE
  	  	2  FROM EMP;

  	*)ADD_MONTHS()

  	  	SQL> SELECT ADD_MONTHS(SYSDATE,5)
  	  	  2  FROM EMP;

  	*)MONTHS_BETWEEN()

		SQL> SELECT MONTHS_BETWEEN(ADD_MONTHS(SYSDATE,5),SYSDATE)
		  2  FROM EMP;

	*)LAST_DAY()

		SQL> SELECT LAST_DAY(SYSDATE)
		   2  FROM EMP;

	*)EXTRACT()

		SQL> SELECT EXTRACT(YEAR FROM SYSDATE)|| '/'|| EXTRACT(MONTH FROM SYSDATE) AS DATE_OF_JOIN
		  2  FROM EMP;

		SQL> SELECT EXTRACT(DAY FROM SYSDATE) DAY
		  2  FROM EMP;

		SQL> SELECT EXTRACT(MONTH FROM SYSDATE) MONTH
		  2  FROM EMP;		
-----------------------------------------------------------------------------------------
4>CONVERSION SINGLE ROW FUNCTION
	*)TO_DATE

			SQL> select TO_DATE(SYSDATE)
			  2  FROM EMP;

	*)TO_CHAR

			SQL> select TO_CHAR(SYSDATE,'DD-MM-YYYY')
			  2  FROM EMP;					
-----------------------------------------------------------------------------------------
5>NUMBER SINGLE ROW FUNCTION

	*)MOD()

		SQL> SELECT ENAME
		  2  FROM EMP
		  3  WHERE MOD(LENGTH(ENAME),2) = 0;

	*)ROUND()

-----------------------------------------------------------------------------------------
6>GENERAL SINGLE ROW FUNCTION
	
	*)NVL()		//' NULL VALUE LOGIC'

			 SQL>  SELECT ENAME,SAL,COMM,NVL((SAL+COMM),SAL) EARNINGS
			   2   FROM EMP;

			 ENAME             SAL       COMM   EARNINGS
			 ---------- ---------- ---------- ----------
			 KING             5000                  5000
			 BLAKE            2850                  2850
			 MARTIN           1250       1400       2650
			 TURNER           1500          0       1500
			 ADAMS            1100                  1100
			 JAMES             950                   950
			 MILLER           1300                  1300
			 CLARK            2450                  2450
			 JONES            2975                  2975
			 SCOTT            3000                  3000
			 FORD             3000                  3000
			 SMITH             800                   800
			 ALLEN            1600        300       1900
			 WARD             1250        500       1750

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
