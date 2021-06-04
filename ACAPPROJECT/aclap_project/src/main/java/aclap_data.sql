




--------------------------DB (table)--------------------------
--DB는 각자 컴퓨터에 각자 만드세여--
--어드민, //샘플 강의 2개// 샘플 문의 2개 //샘플 맴버2
--------------------------member--------------------------
DROP TABLE ACLAPMEMBER
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MEMBER;

CREATE TABLE ACLAPMEMBER(
    MEMNUM NUMBER PRIMARY KEY,
    EMAIL VARCHAR2(50) NOT NULL UNIQUE,
    PWD VARCHAR2(50) NOT NULL,
    USERNAME VARCHAR2(50) NOT NULL,
    NICKNAME VARCHAR2(50) NOT NULL UNIQUE,
    PHONENUM VARCHAR2(50) NULL,
    INTEREST1 VARCHAR2(50) NULL,
    INTEREST2 VARCHAR2(50) NULL,
    INTEREST3 VARCHAR2(50) NULL,
    PROFILEPIC VARCHAR2(50) NULL,
    AUTH NUMBER(1) NOT NULL, -- 3일반 9어드민
    CLASSMASTER NUMBER(1) NOT NULL, --0일반 1강사
    MYPOINT NUMBER NOT NULL
);

CREATE SEQUENCE SEQ_MEMBER
START WITH 1
INCREMENT BY 1;

ALTER TABLE ACLAPMEMBER
MODIFY PROFILEPIC VARCHAR2(500);

INSERT INTO ACLAPMEMBER (MEMNUM, EMAIL, PWD, USERNAME, NICKNAME, PHONENUM, INTEREST1, INTEREST2, INTEREST3, PROFILEPIC, AUTH, CLASSMASTER, MYPOINT)
VALUES(SEQ_MEMBER.NEXTVAL, 'admin@gmail.com', 'admin', 'admin', 'admin', 1111, '음악', NULL, NULL, NULL, 9, 1, 5000);

INSERT INTO ACLAPMEMBER (MEMNUM, EMAIL, PWD, USERNAME, NICKNAME, PHONENUM, INTEREST1, INTEREST2, INTEREST3, PROFILEPIC, AUTH, CLASSMASTER, MYPOINT)
VALUES(SEQ_MEMBER.NEXTVAL, 'AAA@AAA.COM', 1111, '1111', '1111', 1111, '아웃도어스포츠', '자격증', NULL, NULL, 3, 0, 0);

INSERT INTO ACLAPMEMBER (MEMNUM, EMAIL, PWD, USERNAME, NICKNAME, PHONENUM, INTEREST1, INTEREST2, INTEREST3, PROFILEPIC, AUTH, CLASSMASTER, MYPOINT)
VALUES(SEQ_MEMBER.NEXTVAL, 'BBB@AAA.COM', 2222, '2222', '2222', 2222, '자격증', '양식', NULL, NULL, 3, 0, 0);

INSERT INTO ACLAPMEMBER (MEMNUM, EMAIL, PWD, USERNAME, NICKNAME, PHONENUM, INTEREST1, INTEREST2, INTEREST3, PROFILEPIC, AUTH, CLASSMASTER, MYPOINT)
VALUES(SEQ_MEMBER.NEXTVAL, 'CCC@AAA.COM', 1234, '홍길동', '홍길동', 1234, '미술', 'front-end', NULL, NULL, 3, 1, 0);

select * from ACLAPMEMBER;

UPDATE ACLAPMEMBER SET MYPOINT = MYPOINT + 200000 
WHERE MEMNUM = 6;
--------------------------onedayClass--------------------------
DROP TABLE ONEDAYCLASS
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_CLASS;

CREATE TABLE ONEDAYCLASS(
    CLASSNUM NUMBER PRIMARY KEY,
    MASTERNUM NUMBER NOT NULL,
    INSTRUCTOR VARCHAR2(50) NOT NULL,
    PRIMARYCATEGORY VARCHAR2(50) NOT NULL,
    SECONDARYCATEGORY VARCHAR2(200) NOT NULL,
    TITLE VARCHAR2(200) NOT NULL,
    CONTENT VARCHAR2(4000) NOT NULL,
    STARTDATE DATE NOT NULL,
    ENDDATE DATE NOT NULL,
    PRICE NUMBER NOT NULL,
    INFORMATION VARCHAR2(500) NOT NULL,
    DURATION VARCHAR2(50) NOT NULL,
    LIMITNUM VARCHAR2(50) NOT NULL,
    PREPARATION VARCHAR2(200) NOT NULL,
    ABOUTME VARCHAR2(1000) NOT NULL,
    IMAGE1 VARCHAR2(50) NOT NULL,
    IMAGE2 VARCHAR2(50) NULL,
    IMAGE3 VARCHAR2(50) NULL,
    IMAGE4 VARCHAR2(50) NULL,
    IMAGE5 VARCHAR2(50) NULL,
    LOCATION VARCHAR2(100) NOT NULL,
    YOUTUBELINK VARCHAR2(200) NULL,
    LIKECOUNT NUMBER(38) NOT NULL,
    DEL NUMBER(1) NOT NULL,
    OLDREGNUM NUMBER NOT NULL,
    NEWREGNUM NUMBER NOT NULL,
    FOREIGN KEY (MASTERNUM) REFERENCES ACLAPMEMBER(MEMNUM)
);

CREATE SEQUENCE SEQ_CLASS
START WITH 1
INCREMENT BY 1;

INSERT INTO ONEDAYCLASS (CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
                  ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM)
VALUES(SEQ_CLASS.NEXTVAL, 1, 'admin', '크리에이티브', '라이프스타일/독서', '독서 클래스', '독서를 위한 클래스', '2021-05-24', '2021-08-28', 5000, '독서를 즐기시는 분 같이 책을 읽어요', '3', '4', '책', 
'책 겁나 읽어본 사람', '0', '0', '0', '0' , '0', '분당', '0',0, 0, 0, 0);

INSERT INTO ONEDAYCLASS (CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
                  ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM)
VALUES(SEQ_CLASS.NEXTVAL, 1, 'admin', '크리에이티브', '라이프스타일/독서', '독서 클래스2', '독서를 위한 클래스2', '2021-05-24', '2021-08-28', 5000, '독서를 즐기시는 분 같이 책을 읽어요2', '3', '4', '책', '책 겁나 읽어본 사람', '0', '0', '0', '0' , '0', '당산', '0',0, 0, 0, 0);

INSERT INTO ONEDAYCLASS (CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
                  ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM)
VALUES(SEQ_CLASS.NEXTVAL, 1, 'admin', '크리에이티브', '음악/악기/기타', '기타 클래스', '기타를 위한 클래스', '2021-05-28', '2021-09-28', 10000, '기타를 배우보고 싶은 분은 함꼐 해요', '2', '2', '기타', '기타 겁나 처본사람', '0', '0', '0', '0' , '0', '홍대', '0',0, 0, 0, 0);

INSERT INTO ONEDAYCLASS (CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
                  ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM)
VALUES(SEQ_CLASS.NEXTVAL, 4, '홍길동', '스포츠레저', '아웃도어스포츠/축구', '축구 클래스', '축구를 위한 클래스', '2021-05-25', '2021-10-28', 3000, '손흥민이 되고싶은 분~', '5', '9', '축구공/축구화', '축구공 좀 차본 사람', '0', '0', '0', '0' , '0', '안산', '0',0, 0, 0, 0);

INSERT INTO ONEDAYCLASS (CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
                  ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM)
VALUES(SEQ_CLASS.NEXTVAL, 4, '홍길동', '크리에이티브', '음악/작곡', '작곡 클래스', '작곡을 위한 클래스', '2021-05-21', '2021-06-28', 3000, '코드쿤스트가 되고싶은 사람?', '4', '3', '노트북', '곡작업 좀 해본 사람', '0', '0', '0', '0' , '0', '신촌', '0',0, 0, 0, 0);

select * from ONEDAYCLASS;

select * from onedayclass o, likes l, review r;


UPDATE ONEDAYCLASS SET NEWREGNUM = NEWREGNUM + 2
WHERE CLASSNUM = 1;

--------------------------likes--------------------------
DROP TABLE LIKES
CASCADE CONSTRAINTS;

CREATE TABLE LIKES(
    MEMNUM NUMBER,
    CLASSNUM NUMBER,
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM),
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);

INSERT INTO LIKES (MEMNUM, CLASSNUM) VALUES ( 4,1);
UPDATE ONEDAYCLASS SET LIKECOUNT = LIKECOUNT +1 WHERE CLASSNUM = 1;

INSERT INTO LIKES (MEMNUM, CLASSNUM) VALUES ( 2,1);
UPDATE ONEDAYCLASS SET LIKECOUNT = LIKECOUNT +1 WHERE CLASSNUM = 1;

INSERT INTO LIKES (MEMNUM, CLASSNUM) VALUES ( 3,1);
UPDATE ONEDAYCLASS SET LIKECOUNT = LIKECOUNT +1 WHERE CLASSNUM = 1;

SELECT * FROM LIKES;
SELECT * FROM ONEDAYCLASS;
SELECT * FROM ACLAPMEMBER;
--최신순
SELECT * FROM ONEDAYCLASS ORDER BY CLASSNUM DESC; 
--평점순
SELECT O.TITLE, O.INSTRUCTOR, AVGPOINT
FROM (SELECT R.CLASSNUM, AVG(STARPOINT) AS AVGPOINT 
        FROM REVIEW R, ONEDAYCLASS O
        WHERE R.CLASSNUM = O.CLASSNUM AND O.PRIMARYCATEGORY LIKE '%크리에이티브%' 
        GROUP BY R.CLASSNUM) R, ONEDAYCLASS O
WHERE R.CLASSNUM = O.CLASSNUM
ORDER BY AVGPOINT DESC;
--인기순
SELECT LIKECOUNT, TITLE 
FROM ONEDAYCLASS 
WHERE PRIMARYcATEGORY LIKE '%크리에이티브%'
ORDER BY LIKECOUNT DESC;

SELECT O.TITLE, O.INSTRUCTOR, O.INFORMATION, O.DURATION, O.LIMITNUM, O.LIKECOUNT, AVGPOINT, O.STARTDATE, O.ENDDATE
FROM (SELECT R.CLASSNUM, AVG(STARPOINT) AS AVGPOINT
        FROM REVIEW R, ONEDAYCLASS O
        WHERE R.CLASSNUM = O.CLASSNUM AND O.PRIMARYCATEGORY LIKE '%크리에이티브%'
        GROUP BY R.CLASSNUM) R, ONEDAYCLASS O
WHERE R.CLASSNUM = O.CLASSNUM
ORDER BY AVGPOINT DESC;

--------------------------review--------------------------
DROP TABLE REVIEW
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_REVIEW;

CREATE TABLE REVIEW(
    REVIEWSEQ NUMBER PRIMARY KEY,
    CLASSNUM NUMBER,
    MEMNUM NUMBER,
    STARPOINT NUMBER NOT NULL,
    RCONTENT VARCHAR2(4000) NOT NULL,
    NAME VARCHAR2(50) NOT NULL,
    CLEANNESS NUMBER(3) NOT NULL,
    SATISFY NUMBER(3) NOT NULL,
    RCOMM NUMBER(3) NOT NULL,
    RLOCATION NUMBER(3) NOT NULL,
    ACCURACY NUMBER(3) NOT NULL,
    DEL NUMBER(1) NOT NULL,
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM),
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM)
);

CREATE SEQUENCE SEQ_REVIEW
START WITH 1
INCREMENT BY 1;

INSERT INTO REVIEW (REVIEWSEQ, CLASSNUM,MEMNUM,STARPOINT,RCONTENT,NAME,CLEANNESS,SATISFY,RCOMM,RLOCATION,ACCURACY,DEL)
VALUES(SEQ_REVIEW.NEXTVAL, 1,4, 4.5, '좋은클래스','홍길동',4.2,4.5,4.7,3.2,4.0,0);

INSERT INTO REVIEW (REVIEWSEQ, CLASSNUM,MEMNUM,STARPOINT,RCONTENT,NAME,CLEANNESS,SATISFY,RCOMM,RLOCATION,ACCURACY,DEL)
VALUES(SEQ_REVIEW.NEXTVAL, 1,2, 5, '좋은클래스','홍길동',4.2,4.5,4.7,3.2,4.0,0);

INSERT INTO REVIEW (REVIEWSEQ, CLASSNUM,MEMNUM,STARPOINT,RCONTENT,NAME,CLEANNESS,SATISFY,RCOMM,RLOCATION,ACCURACY,DEL)
VALUES(SEQ_REVIEW.NEXTVAL, 2,4, 3, '좋은클래스2','홍길동',4.2,4.5,4.7,3.2,4.0,0);

SELECT * FROM REVIEW;
--------------------------schedule--------------------------
DROP TABLE SCHEDULE
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_SCHEDULE;

CREATE TABLE SCHEDULE(
    SCHEDULENUM NUMBER PRIMARY KEY,
    RDATE VARCHAR2(50) NOT NULL,
    MEMNUM NUMBER NOT NULL,
    CLASSNUM NUMBER,
    PARTICIPANTS NUMBER NOT NULL,
    DEL NUMBER(1) NOT NULL,
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM),
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);
CREATE SEQUENCE SEQ_SCHEDULE
START WITH 1
INCREMENT BY 1;

INSERT INTO SCHEDULE (SCHEDULENUM, RDATE, MEMNUM, CLASSNUM, PARTICIPANTS, DEL)
VALUES(SEQ_SCHEDULE.NEXTVAL, '2021-06-04', 6, 1, 1, 0);


select * from SCHEDULE;

SELECT COUNT(*), RDATE
FROM SCHEDULE
WHERE CLASSNUM = 3
GROUP BY RDATE
ORDER BY RDATE;

SELECT S.RDATE as RDATE, S.SCHEDULENUM AS SCHEDULENUM, M.USERNAME AS NAME, S.CLASSNUM AS CLASSNUM, O.TITLE AS TITLE 
FROM SCHEDULE S, ONEDAYCLASS O, ACLAP MEMBER M
WHERE S.CLASSNUM = O.CLASSNUM AND M.MEMNUM = O.INSTRUCTOR;

  SELECT S.RDATE as RDATE, S.SCHEDULENUM AS SCHEDULENUM, M.USERNAME AS NAME, S.CLASSNUM AS CLASSNUM, O.TITLE AS TITLE 
  FROM SCHEDULE S, ONEDAYCLASS O, ACLAPMEMBER M
  WHERE S.CLASSNUM = O.CLASSNUM AND 'admin' = O.INSTRUCTOR AND M.MEMNUM = S.MEMNUM;
  
  commit;

--------------------------receipt--------------------------
DROP TABLE RECEIPT
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_RECEIPT;

CREATE TABLE RECEIPT(
    RECEIPTNUM NUMBER PRIMARY KEY,
    NAME VARCHAR2(50) NOT NULL,
    PRICE NUMBER NOT NULL,
    PAYDATE DATE NOT NULL,
    CLASSDATE DATE NOT NULL,
    CLASSNUM NUMBER,
    MEMNUM NUMBER,
    DEL NUMBER(1) NOT NULL,
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM),
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);

CREATE SEQUENCE SEQ_RECEIPT
START WITH 1
INCREMENT BY 1;

SELECT * FROM RECEIPT

INSERT INTO RECEIPT (RECEIPTNUM, NAME, PRICE, PAYDATE, CLASSDATE, CLASSNUM, MEMNUM, DEL) VALUES (SEQ_RECEIPT.NEXTVAL, '이안근', 10000, SYSDATE, '2021-06-21', 1, 6, 0)

--------------------------noticeBbs--------------------------
DROP TABLE NOTICEBBS
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_NOTICEBBS;

CREATE TABLE NOTICEBBS(
    NOTICENUM NUMBER PRIMARY KEY,
    MEMNUM NUMBER,
    NTITLE VARCHAR2(50) NOT NULL,
    NCONTENT VARCHAR2(4000) NULL,
    WDATE DATE NOT NULL,
    NIMG VARCHAR2(50) NULL,
    DEL NUMBER(1) NOT NULL,
    ANSWER NUMBER(1) NOT NULL,
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM)
);

CREATE SEQUENCE SEQ_NOTICEBBS
START WITH 1
INCREMENT BY 1;

INSERT INTO NOTICEBBS(NOTICENUM, MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER)
VALUES (SEQ_NOTICEBBS.NEXTVAL, 2, 'HELLO', 'WORLD', SYSDATE, NULL, 0, 0);

INSERT INTO NOTICEBBS(NOTICENUM, MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER)
VALUES (SEQ_NOTICEBBS.NEXTVAL, 5, 'KOREA', 'SEOUL', SYSDATE, NULL, 0, 0);

SELECT * FROM aclapmember A, NOTICEBBS N
WHERE A.MEMNUM = N.MEMNUM;

SELECT NOTICENUM, N.MEMNUM AS MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER, A.USERNAME AS USERNAME, A.EMAIL AS EMAIL
FROM ACLAPMEMBER A, NOTICEBBS N
WHERE A.MEMNUM = N.MEMNUM;

SELECT NOTICENUM, N.MEMNUM AS MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER, A.USERNAME AS USERNAME, A.EMAIL AS EMAIL
FROM ACLAPMEMBER A, NOTICEBBS N
WHERE A.MEMNUM = N.MEMNUM and NOTICENUM=1;

SELECT NOTICENUM, MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER, USERNAME, EMAIL
FROM (select ROW_NUMBER()OVER(ORDER BY NOTICENUM ASC) AS RNUM, NOTICENUM, N.MEMNUM AS MEMNUM, NTITLE, NCONTENT, WDATE, NIMG, DEL, ANSWER, A.USERNAME AS USERNAME, A.EMAIL AS EMAIL 
from ACLAPMEMBER A, NOTICEBBS N
WHERE A.MEMNUM = N.MEMNUM 
order by NOTICENUM ASC) where RNUM BETWEEN 1 and 10
ORDER BY ANSWER ASC;

select * from NOTICEBBS;
---------------------------MYSTAMP TABLE--------------------------

DROP TABLE MYSTAMP
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MYSTAMP;

CREATE TABLE MYSTAMP(
    MYSTAMPNUM NUMBER PRIMARY KEY,
    MEMNUM NUMBER NOT NULL,
    CLASSNUM NUMBER NOT NULL,
    CLASSDATE DATE NOT NULL,
    PRIMARYCATEGORY VARCHAR2(50) NOT NULL,
    SECONDARYCATEGORY VARCHAR2(200) NOT NULL,
    TITLE VARCHAR2(200) NOT NULL,
    FOREIGN KEY (MEMNUM) REFERENCES ACLAPMEMBER(MEMNUM),
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);


CREATE SEQUENCE SEQ_MYSTAMP
START WITH 1
INCREMENT BY 1;


SELECT * FROM MYSTAMP;

---------------------NOCLASSDATE---------------------------------------------

DROP TABLE NOCLASSDATE
CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_NOCLASSDATE;

CREATE TABLE NOCLASSDATE(
    NOCLASSDATENUM NUMBER PRIMARY KEY,
    CLASSNUM NUMBER,
    NOCLASSDATE DATE,
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);
CREATE SEQUENCE SEQ_NOCLASSDATE
START WITH 1
INCREMENT BY 1;

select * from NOCLASSDATE;

insert into noclassdate (NOCLASSDATENUM, CLASSNUM, NOCLASSDATE)values(SEQ_NOCLASSDATE.nextval, 3, '2021-08-10');

commit;


-----------날짜구하기--------------
--2)두 날짜 사이의 날짜 구하기
--STARTDATE == 220210525
--STARTDATE == SYSDATE
--ENDDATE == 20210628
--수업불가능한날 == 20210621

SELECT YMD FROM(
SELECT TO_DATE ('20210525', 'YYYYMMDD')+(LEVEL - 1) YMD
FROM DUAL
CONNECT BY TO_DATE ('20210525', 'YYYYMMDD')+(LEVEL-1) <=TO_DATE ('20210628', 'YYYYMMDD')) 
WHERE YMD != '20210621';


INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 1, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 2, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 2, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 2, '요리', '양식', '양식배우기');

INSERT INTO MYSTAMP VALUES (SEQ_MYSTAMP.NEXTVAL, 6, 2, '요리', '양식', '양식배우기');

SELECT YMD FROM(
SELECT TO_DATE ('20210525', 'YYYYMMDD')+(LEVEL - 1) YMD
FROM DUAL
CONNECT BY TO_DATE ('20210525', 'YYYYMMDD')+(LEVEL-1) <=TO_DATE ('20210628', 'YYYYMMDD')) 
WHERE YMD != '20210621' AND YMD != '20210531';


-- WHILE문 만들기랑.. 

SELECT COUNT(*)
FROM MYSTAMP
WHERE memNum=6
limitNum

CREATE TABLE CLASSSCHEDULE(
    SCHEDULENUM NUMBER PRIMARY KEY,
    CLASSNUM NUMBER,
    LIMITNUM NUMBER NOT NULL,
    RDATE VARCHAR2(200) NOT NULL,
    FOREIGN KEY (CLASSNUM) REFERENCES ONEDAYCLASS(CLASSNUM)
);

CREATE SEQUENCE SEQ_CLASSSCHEDULE
START WITH 1           
INCREMENT BY 1;


SELECT YMD, O.CLASSNUM
FROM (  SELECT STARTDATE YMD, CLASSNUM
        FROM ONEDAYCLASS
        WHERE BETWEEN STARTDATE AND ENDDATE ) O, NOCLASSDATE N
WHERE O.CLASSNUM = N.CLASSNUM AND O.CLASSNUM = 1 AND YMD != N.NOCLASSDATE

SELECT YMD, O.CLASSNUM
FROM (  SELECT TO_DATE (STARTDATE)+(LEVEL - 1) YMD, CLASSNUM
        FROM ONEDAYCLASS
        CONNECT BY TO_DATE (STARTDATE)+(LEVEL-1) <= TO_DATE (ENDDATE) ) O, NOCLASSDATE N
WHERE O.CLASSNUM = N.CLASSNUM AND O.CLASSNUM = 1 AND YMD != N.NOCLASSDATE

SELECT YMD AS RDATE, PRICE, DURATION, LIMITNUM
FROM (  SELECT TO_DATE('2021-05-31')+(LEVEL) YMD
        FROM DUAL
        CONNECT BY TO_DATE('2021-05-31')+(LEVEL) <= (TO_DATE('2021-06-30') +5) ) D, NOCLASSDATE N, ONEDAYCLASS O
WHERE O.CLASSNUM = N.CLASSNUM AND O.CLASSNUM = 3 AND YMD != N.NOCLASSDATE;


SELECT COUNT(*)
FROM NOCLASSDATE
WHERE BETWEEN TO_DATE('2021-05-31') AND TO_DATE('2021-06-30')
SELECT * FROM NOCLASSDATE

SELECT * FROM ONEDAYCLASS

SELECT TRUNC(NOCLASSDATE, 'DD') AS RDATE
FROM NOCLASSDATE 
WHERE CLASSNUM = 3
ORDER BY RDATE

SELECT ymd as rdate, O.PRICE, O.DURATION, LIMITNUM
FROM (  SELECT TO_DATE ('2021-06-01')+(LEVEL) YMD
        FROM DUAL
        CONNECT BY TO_DATE ('2021-06-01')+(LEVEL) <= TO_DATE ('2021-09-28') ) D, NOCLASSDATE N, ONEDAYCLASS O
WHERE O.CLASSNUM = 3 AND O.CLASSNUM = N.CLASSNUM AND ymd != N.NOCLASSDATE
order by rdate desc


SELECT ymd AS RDATE, O.PRICE, O.DURATION, LIMITNUM
FROM (  SELECT distinct TO_DATE ('2021-06-01')+(LEVEL) RDATE, PRICE, DURATION, LIMITNUM
        FROM ONEDAYCLASS O
        WHERE O.CLASSNUM = N.CLASSNUM
        CONNECT BY TO_DATE ('2021-06-01')+(LEVEL) <= TO_DATE ('2021-09-28')
        ORDER BY RDATE ) D, ONEDAYCLASS O
WHERE O.CLASSNUM = 3 AND ymd != N.NOCLASSDATE


SELECT YMD AS RDATE, O.PRICE, O.DURATION, LIMITNUM
FROM (  SELECT TO_DATE ('2021-06-01')+(LEVEL) YMD
        FROM dual
        CONNECT BY TO_DATE ('2021-06-01')+(LEVEL) <= TO_DATE ('2021-09-28') ) D, ONEDAYCLASS O
WHERE YMD NOT IN (SELECT NOCLASSDATE FROM NOCLASSDATE WHERE CLASSNUM=3) and O.CLASSNUM = 3
ORDER BY RDATE

SELECT * FROM ONEDAYCLASS
SELECT * FROM ACLAPMEMBER
SELECT COUNT(*)
FROM ONEDAYCLASS O, ACLAPMEMBER A
WHERE O.MASTERNUM = A.MEMNUM
	AND A.EMAIL = 'akkessun@gmail.com'

SELECT * FROM REVIEW	
	
SELECT R.CLASSNUM, AVG(STARPOINT) AS AVGPOINT
FROM REVIEW R, ONEDAYCLASS O
WHERE R.CLASSNUM = O.CLASSNUM AND R.CLASSNUM = 1  
GROUP BY R.CLASSNUM

SELECT O.CLASSNUM, MASTERNUM, INSTRUCTOR, PRIMARYCATEGORY, SECONDARYCATEGORY, TITLE, CONTENT, STARTDATE, ENDDATE, PRICE, INFORMATION, DURATION, LIMITNUM, PREPARATION,
ABOUTME, IMAGE1, IMAGE2, IMAGE3, IMAGE4, IMAGE5, LOCATION, YOUTUBELINK, LIKECOUNT, DEL, OLDREGNUM, NEWREGNUM, A.PROFILEPIC, A.EMAIL, LAYERSELECT, S.AVGPOINT
FROM ONEDAYCLASS O, ACLAPMEMBER A, (SELECT R.CLASSNUM AS CLASSNUM, AVG(STARPOINT) AS AVGPOINT
									FROM REVIEW R, ONEDAYCLASS N
									WHERE R.CLASSNUM = N.CLASSNUM AND R.CLASSNUM = 2 AND R.MEMNUM != 1
									GROUP BY R.CLASSNUM) S
WHERE O.MASTERNUM = A.MEMNUM AND S.CLASSNUM = O.CLASSNUM
AND O.CLASSNUM = 2

SELECT NAME, PRICE AS RPOINT, PAYDATE, CLASSDATE, CLASSNUM, MEMNUM, TITLE
FROM RECEIPT R, (SELECT TITLE FROM ONEDAYCLASS WHERE CLASSNUM =1) O
WHERE CLASSDATE='2021-06-21' AND CLASSNUM=1 AND MEMNUM=6

SELECT * 
FROM RECEIPT
WHERE CLASSNUM=26 AND MEMNUM=8 AND CLASSDATE='2021-06-05'

SELECT COUNT(*) AS COUNT, RDATE, PARTICIPANTS
FROM SCHEDULE
WHERE CLASSNUM = 26
GROUP BY RDATE
ORDER BY RDATE

SELECT SCHEDULENUM, REPLACE(RDATE, '-', ''), MEMNUM, CLASSNUM, PARTICIPANTS, DEL
FROM SCHEDULE
WHERE CLASSNUM = 1;

SELECT COUNT(*)
FROM SCHEDULE
WHERE CLASSNUM = 1 AND MEMNUM = 6 
		AND DEL != 1
			AND REPLACE(RDATE, '-', '')> TO_CHAR(SYSDATE, 'YYYYMMDD') 
			
