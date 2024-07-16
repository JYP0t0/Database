# 날짜: 2024/07/16
# 이름: 박준영
# 내용: ERD 모델링 실습1

# ERD 생성 후 데이터 입력
select*from departments;
INSERT INTO DEPARTMENTS VALUES (10,'국어국문학과','051-510-1010');
INSERT INTO DEPARTMENTS VALUES (11,'영어영문학과','051-510-1011');
INSERT INTO DEPARTMENTS VALUES (20,'경영학과','051-510-1020');
INSERT INTO DEPARTMENTS VALUES (21,'경제학과','051-510-1021');
INSERT INTO DEPARTMENTS VALUES (22,'정치외교학과','051-510-1022');
INSERT INTO DEPARTMENTS VALUES (23,'사회복지학과','051-510-1023');
INSERT INTO DEPARTMENTS VALUES (30,'수학과','051-510-1030');
INSERT INTO DEPARTMENTS VALUES (31,'통계학과','051-510-1031');
INSERT INTO DEPARTMENTS VALUES (32,'생명과학과','051-510-1032');
INSERT INTO DEPARTMENTS VALUES (40,'기계공학과','051-510-1040');
INSERT INTO DEPARTMENTS VALUES (41,'전자공학과','051-510-1041');
INSERT INTO DEPARTMENTS VALUES (42,'컴퓨터공학','051-510-1042');



select*from professors;
INSERT INTO PROFESSORS VALUES ('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
INSERT INTO PROFESSORS VALUES ('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
INSERT INTO PROFESSORS VALUES ('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
INSERT INTO PROFESSORS VALUES ('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
INSERT INTO PROFESSORS VALUES ('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
INSERT INTO PROFESSORS VALUES ('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
INSERT INTO PROFESSORS VALUES ('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
INSERT INTO PROFESSORS VALUES ('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
INSERT INTO PROFESSORS VALUES ('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
INSERT INTO PROFESSORS VALUES ('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
INSERT INTO PROFESSORS VALUES ('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
INSERT INTO PROFESSORS VALUES ('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광준s');



select*from lectures;
insert into `lectures` values (101001, 'p10101', '대학 글쓰기', 2, 10, '본102');
insert into `lectures` values (101002, 'p10102', '한국어음운론', 3, 30, '본102');
insert into `lectures` values (101003, 'p10102', '한국현대문학사', 3, 30, '본103');
insert into `lectures` values (111011, 'p11103', '중세영문학', 3, 25, '본201');
insert into `lectures` values (111012, 'p11104', '영미시', 3, 25, '본201');
insert into `lectures` values (231110, 'p23102', '사회복지학개론', 1, 8, '별관103');
insert into `lectures` values (311002, 'p31101', '통계학의 이해', 2, 16, '별관303');
insert into `lectures` values (311003, 'p31104', '기초 통계학', 3, 26, '별관303');
insert into `lectures` values (401019, 'p40101', '기계역학', 3, 36, '공학관 102');
insert into `lectures` values (421012, 'p42103', '데이터베이스', 3, 32, '공학관 103');



select*from register;
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 20101001, 101001, 'p10101');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 20101001, 101002, 'P10102');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 20111013, 111011, 'P11103');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 21231002, 231110, 'P23102');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 22401001, 401019, 'P40101');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 22401001, 421012, 'P42103');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 20101001, 101003, 'P10102');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 22421003, 311003, 'P31104');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 22421003, 421012, 'P42103');
insert into `register` (`stdNo`, `lecNo`, `proNo`)values ( 20111013, 111012, 'P11104');



select*from student;
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('20101001',10,'p10101','정우성','760121-1234567','010-1101-7601','서울');
insert into `student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('20101002',10,'p10101','이정재','750611-1234567','010-1102-7506','서울');
insert into `student` values ('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','서울');
insert into `Student` values ('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','서울');
insert into `Student` values ('20111014',11,'P11104','원빈','660912-1234567','010-2104-6609','one@daum.net','서울');
insert into `Student` values ('21221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','서울');
insert into `Student` values ('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','서울');
insert into `Student` values ('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','서울');
insert into `Student`(`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('22311014',31,'P31104','유재석','721128-1234567','010-6101-7211','서울');
insert into `Student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`) values ('22401001',40,'P40101','강호동','920907-1234567','010-7103-9209','서울');
insert into `Student` values ('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','서울');
insert into `Student` values ('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','서울');

# 문제 1. 
select a.stdNo, a.stdName, a.stdHp, a.depNo, b.depName 
from student as a join departments as b on a.depNo = b.depNo;


# 문제 2. 
select a.proNo, a.proName, a.proHp, a.depNo, b.depName 
from professors as a join departments as b on a.depNo = b.depNo ;


# 문제 3. 
select  a.lecNo, a.lecName, b.proName, b.proHp 
from lectures as a join professors as b on a.proNo = b.proNo ;



# 문제 4. 
select a.lecNo, a.lecName, b.proNo, b.proName, b.proHp, b.depNo, c.depName
from lectures as a join professors as b on a.proNo = b.proNo join departments as c on b.depNo = c.depNo ; 



# 문제 5. 
select a.stdNo, a.stdName, b.lecNo, b.lecName, c.proNo, c.ProName
from student as a join professors as c on a.depNo=c.depNo join lectures as b on c.proNo=b.proNo;



# 문제 6. 
set sql_safe_updates=0;
update register set regAttenScore=80, regMidScore=88, regFinalScore=98 where stdNo = 20101001 and lecNo = 101001;
update register set regAttenScore=77, regMidScore=81, regFinalScore=99 where stdNo = 20101001 and lecNo = 101002;
update register set regAttenScore=89, regMidScore=85, regFinalScore=90 where stdNo = 20111013 and lecNo = 111011;
update register set regAttenScore=68, regMidScore=85, regFinalScore=90 where stdNo = 21231002;
update register set regAttenScore=77, regMidScore=100, regFinalScore=92 where stdNo = 22401001 and lecNo = 401019;
update register set regAttenScore=84, regMidScore=90, regFinalScore=94 where stdNo = 22401001 and lecNo = 421012;
update register set regAttenScore=13, regMidScore=78, regFinalScore=87 where stdNo = 20101001 and lecNo = 101003;
update register set regAttenScore=93, regMidScore=90, regFinalScore=88 where stdNo = 22421003 and lecNo = 311003;
update register set regAttenScore=84, regMidScore=90, regFinalScore=89 where stdNo = 22421003 and lecNo = 421012;
update register set regAttenScore=49, regMidScore=89, regFinalScore=88 where stdNo = 20111013 and lecNo = 111012;

update register set                                      # 간단한 방법
					regAttenScore =ceil(rand()*100),
                    regAttenScore =ceil(rand()*100),
					regFinalScore =ceil(rand()*100);





# 문제 7. 
update register set regTotal = (regAttenScore + regMidScore + regFinalScore) / 3; # 평균이 각자 따로 나옴



# 문제 8.  #!!!!!!!!!!!!!!!
update register set 
regGrade = if(regTotal >= 90, 'A', if(regTotal >= 80, 'B', if(regTotal >= 70, 'C',if(regTotal >= 60, 'D', 'F'))));



# 문제 9. 
select regTotal from Register order by regTotal desc limit 1;


# 문제 10. 
select avg(regTotal) from Register as a
join Student as b
on a.stdNo = b.stdNo
where stdName='정우성';


