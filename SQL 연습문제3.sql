# 날짜: 2024/07/10
# 이름: 박준영
# 내용: SQL 연습문제3

# 실습 3-1
create database `college`;
create user 'college'@'%' identified by '1234';
grant all privileges on college.*to'college'@'%';
flush privileges;

use`college`;
# 실습 3-2
create table `student`(
	`stdNo`		 	char(8) primary key,
    `stdName`		varchar(20) not null,
    `stdHp`			char(13) not null,
    `stdYear`		int not null,
    `stdAddress`	varchar(100) default null
    );

create table`lecture`(
	`lecNo`			int primary key,
	`lecName`		varchar(20) not null,
	`lecCredit`		int not null,
    `lecTime`		int not null,
    `lecClass`		varchar(10) default null
    );
    
create table`register`(
	`regStdNo`			char(8) ,
	`regLecNo`			int not null,
	`regMidScore`		int default null,
    `regFinalScore`		int default null,
    `regTotalScore`		int default null,
    `regGrade`			char(1) default null
    );
    
    
# 실습 3-3
insert into`student`values(20201016, '김유신', '010-1234-1001', 3, null);
insert into`student`values(20201126, '김춘추', '010-1234-1002', 3, '경상남도 경주시');
insert into`student`values(20210216, '장보고', '010-1234-1003', 2, '전라남도 완도시');
insert into`student`values(20210326, '강감찬', '010-1234-1004', 2, '서울시 영등포구');
insert into`student`values(20220416, '이순신', '010-1234-1005', 1, '부산시 부산진구');
insert into`student`values(20220521, '송상현', '010-1234-1006', 1, '부산시 동래구');

insert into`lecture`values(159, '인지행동심리학', 3, 40, '본304');
insert into`lecture`values(167, '운영체제론', 3, 25, '본605');
insert into`lecture`values(234, '중급 영문법', 3, 20, '본201');
insert into`lecture`values(239, '세법기론', 3, 40, '본204');
insert into`lecture`values(248, '빅데이터 개론', 3, 20, '본601');
insert into`lecture`values(253, '컴퓨팅사고와 코딩', 2, 10, '본602');
insert into`lecture`values(349, '사회복지 마케팅', 2, 50, '본301');

insert into`register`values(20201126, 234, null, null, null, null);
insert into`register`values(20201016, 248, null, null, null, null);
insert into`register`values(20201016, 253, null, null, null, null);
insert into`register`values(20201126, 239, null, null, null, null);
insert into`register`values(20210216, 349, null, null, null, null);
insert into`register`values(20210326, 349, null, null, null, null);
insert into`register`values(20201016, 167, null, null, null, null);
insert into`register`values(20220416, 349, null, null, null, null);



# 실습 3-4
select*from `lecture`;


# 실습 3-5
select*from`student`;



# 실습 3-6
select*from`register`;



# 실습 3-7
select*from`student` where `stdYear` = 3;
update`student`set`stdYear`=2 where `stdName` = '강감찬';
set sql_safe_updates=0;  		# 안전모드 일시 해제 
set sql_safe_updates=1;			# 안전모드 설정



# 실습 3-8
select*from`lecture` where `lecCredit`=2;



# 실습 3-9 -------------------------------------
update`register`set `regMidScore`=36, `regFinalScore`=42 where`regStdNo`='20201126'and`regLecNo`=234;
update`register`set `regMidScore`=24, `regFinalScore`=62 where`regStdNo`='20201016'and`regLecNo`=248;
update`register`set `regMidScore`=28, `regFinalScore`=40 where`regStdNo`='20201016'and`regLecNo`=253;
update`register`set `regMidScore`=37, `regFinalScore`=57 where`regStdNo`='20201126'and`regLecNo`=239;
update`register`set `regMidScore`=28, `regFinalScore`=68 where`regStdNo`='20210216'and`regLecNo`=349;
update`register`set `regMidScore`=16, `regFinalScore`=65 where`regStdNo`='20210326'and`regLecNo`=349;
update`register`set `regMidScore`=18, `regFinalScore`=38 where`regStdNo`='20201016'and`regLecNo`=167;
update`register`set `regMidScore`=25, `regFinalScore`=58 where`regStdNo`='20220416'and`regLecNo`=349;
select*from`register`;



# 실습 3-10
update `register` set
		`regTotalScore`= `regMidScore` + `regFinalScore`,
	`regGrade` = if(`regTotalScore` >= 90, 'A', 
				 if(`regTotalScore` >= 80, 'B',
				 if(`regTotalScore` >= 70, 'C',
				 if(`regTotalScore` >= 60, 'D', 'F'))));



# 실습 3-11
select*from`register`order by `regTotalScore` desc;




# 실습 3-12
select*from`register`where`regLecNo`=349 order by `regTotalScore` desc;



# 실습 3-13
select*from `lecture`where`lecTime`>=30;



# 실습 3-14
select`lecName`,`lecClass`from`lecture`;



# 실습 3-15
select`stdNo`,`stdName`from`student`;



# 실습 3-16
select*from`student`where`stdAddress`is null;



# 실습 3-17
select*from`student`where `stdAddress` like '부산시%';



# 실습 3-18 !!!!!!!!!!!!!!!!!!!!!!!!!
select*from`student`as a left join `register` as b on a.stdNo = b.regStdNo;




# 실습 3-19
select
	`stdNo`,
	`stdName`,
    `regLecNo`,
    `regMidScore`,
    `regTotalScore`,
    `regGrade`
from`student` as a, `register` as b where a.stdNo = b.regStdNo order by `stdNo`;



# 실습 3-20!!!!!!!!!!
select `stdName`, `stdNo`, `regLecNo`
from `Student` as a
join `Register` as b
where a.stdNo = b.regStdNo and `regLecNo`=349;


# 실습 3-21
select
	`stdNo`,
	`stdName`,
	COUNT(`stdNo`) AS `수강신청 건수`,
	SUM(`regTotalScore`) AS `종합점수`,
	SUM(`regTotalScore`) / COUNT(`stdNo`) AS `평균`
FROM `Student` AS a
JOIN `Register` AS b
ON a.stdNo = b.regStdNo
group by`stdNo`;



# 실습 3-22



# 실습 3-23
# 실습 3-24 
# 실습 3-25
# 실습 3-26
# 실습 3-27
# 실습 3-28
# 실습 3-29
# 실습 3-30  
