# 2024/07/17
# 이름: 박준영
# 내용: ERD 모델링 실습2

# 진료과
INSERT INTO DEPARTMENTS VALUES
(101, '소아과', '김유신', '051-123-0101'),
(102, '내과', '김춘추', '051-123-0102'),
(103, '외과', '장보고', '051-123-0103'),
(104, '피부과', '신덕여왕', '051-123-0104'),
(105, '이비인후과', '강감찬', '051-123-0105'),
(106, '산부인과', '신사임당', '051-123-0106'),
(107, '흉부외과', '류성룡', '051-123-0107'),
(108, '정형외과', '송상현', '051-123-0108'),
(109, '신경외과', '이순신', '051-123-0109'),
(110, '비뇨기과', '정약용', '051-123-0110'),
(111, '안과', '박지원', '051-123-0111'),
(112, '치과', '전봉준', '051-123-0112');


#의사
SELECT * FROM DOCTORS;
INSERT INTO doctors VALUES
('D101101', '김유신', '1976-01-21', 'M', 101, '과장', '010-1101-1976', 'kimrys@bw.com'),
('D101102', '계백', '1975-06-11', 'M', 101, '전문의', '010-1102-1975', 'gaeback@bw.com'),
('D101103', '김관창', '1989-05-30', 'M', 101, '전문의', '010-1103-1989', 'kwanch@bw.com'),
('D102101', '김춘추', '1979-04-13', 'M', 102, '과장', '010-2101-1979', 'kimcc@bw.com'),
('D102104', '이사부', '1966-09-12', 'M', 102, '전문의', '010-2104-1966', 'leesabu@bw.com'),
('D103101', '장보고', '1979-07-28', 'M', 103, '과장', '010-3101-1979', 'jangbg@bw.com'),
('D104101', '신덕여왕', '1984-06-15', 'F', 104, '과장', '010-4101-1984', 'gueen@bw.com'),
('D105101', '강감찬', '1965-10-21', 'M', 105, '과장', '010-5101-1965', 'kang@bw.com'),
('D106101', '신사임당', '1972-11-28', 'F', 106, '과장', '010-6101-1972', 'sinsa@bw.com'),
('D107103', '이이', '1992-09-07', 'M', 107, '전문의', '010-7103-1992', 'leelee@bw.com'),
('D107104', '이황', '1989-12-09', 'M', 107, '전문의', '010-7104-1989', 'hwang@bw.com'),
('D108101', '송상현', '1977-03-14', 'M', 108, '과장', '010-8101-1977', 'ssh@bw.com');


#환자
SELECT * FROM patients ;
INSERT INTO patients VALUES ('P102102', 'D102104', 'N102103', '전지현', '890530-1234567', 'F', '대전', '010-1103-8905', 'jjh@naver.com', '자영업');
INSERT INTO patients VALUES('P104101', 'D104101', 'N104101', '이나영', '790413-1234567', 'F', '대전', '010-1104-7904', 'lee@naver.com', '회사원');
INSERT INTO patients VALUES('P105101', 'D105101', 'N105101', '원빈', '660912-1234567', 'M', '대전', '010-2104-6609', 'one@daum.net', '배우');
INSERT INTO patients VALUES('P103102', 'D103101', 'N103101', '장동건', '790728-1234567', 'M', '대구', '010-3102-7907', 'jang@naver.com', '배우');
INSERT INTO patients VALUES('P104102', 'D104101', 'N104101', '고소영', '840615-1234567', 'F', '대구', '010-4101-8406', 'goso@daum.net', '회사원');
INSERT INTO patients VALUES('P108101', 'D108101', 'N108101', '김연아', '651021-1234567', 'F', '대구', '010-5101-6510', 'yuna@daum.net', '운동선수');
INSERT INTO patients VALUES('P105102', 'D105101', 'N105101', '조인성', '891209-1234567', 'M', '광주', '010-7104-8912', 'join@gmail.com', '배우');
INSERT INTO patients VALUES('P104103', 'D104101', 'N104101', '강동원', '770314-1234567', 'M', '광주', '010-8101-7703', 'dong@naver.com', '배우');
INSERT INTO patients (pat_id, doc_id, nur_id,pat_name,pat_jumin,pat_gen,pat_addr,pat_phone,pat_job) VALUES
('P102101', 'D102101', 'N102101', '정우성', '760121-1234567', 'M', '서울', '010-1101-7601', '배우');
INSERT INTO patients (pat_id, doc_id, nur_id,pat_name,pat_jumin,pat_gen,pat_addr,pat_phone,pat_job) VALUES
('P103101', 'D103101', 'N103101', '이정재', '750611-1234567', 'M', '서울', '010-1102-7506',  '배우');
INSERT INTO patients (pat_id, doc_id, nur_id,pat_name,pat_jumin,pat_gen,pat_addr,pat_phone,pat_job) VALUES
('P102103', 'D102104', 'N102102', '유재석', '721128-1234567', 'M', '부산', '010-6101-7211', '개그맨');
INSERT INTO patients (pat_id, doc_id, nur_id,pat_name,pat_jumin,pat_gen,pat_addr,pat_phone,pat_job) VALUES
('P107101', 'D107104', 'N107101', '강호동', '920907-1234567', 'M', '부산', '010-7103-9209', '개그맨');


select * from nurses;
INSERT INTO Nurses  VALUES
('N101101', '송승헌', '1976-02-21', 'M', '101', '수간호사', '010-1101-7602', 'ssh@bw.com'),
('N102101', '이영애', '1975-07-11', 'F', '102', '수간호사', '010-1102-7507', 'yung@bw.com'),
('N102102', '엄정화', '1989-06-30', 'F', '102', '주임', '010-1103-8906', 'um@bw.com'),
('N102103', '박명수', '1979-05-13', 'M', '102', '주임', '010-2101-7905', 'park@bw.com'),
('N103101', '정준하', '1986-10-24', 'M', '106', '주임', '010-2104-6610', 'jung@bw.com'),
('N104101', '김태희', '1978-08-25', 'F', '103', '주임', '010-2101-7908', 'taeh@bw.com'),
('N105101', '송혜교', '1984-07-15', 'F', '105', '주임', '010-4101-8407', 'song@bw.com'),
('N106101', '공유', '1965-11-21', 'M', '108', '간호사', '010-5101-6511', 'gong@bw.com'),
('N107101', '이병헌', '1972-12-28', 'M', '107', '간호사', '010-6101-7212', 'byung@bw.com'),
('N108101', '송중기', '1982-10-07', 'M', '108', '간호사', '010-7103-8210', 'jungi@bw.com');



# 진료
select*from Treatments;
INSERT INTO Treatments VALUES
(1021001, 'D102101', 'P102101', '감기. 몸살', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1031002, 'D103101', 'P103101', '교통사고 외상', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1021003,'D102104', 'P102102', '위염. 장염', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1041004,'D104101', 'P104101', '피부 트러블', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1051005,'D105101', 'P105101', '고막염 및 비염', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1031006, 'D103101', 'P103102', '목 디스크', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1041007, 'D104101', 'P104102', '여드름', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1081008, 'D108101', 'P108101', '오른쪽 발목 뼈 골절', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1021009, 'D102104', 'P102103', '소화불량', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1071010, 'D107104', 'P107101', '가슴 통증', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1051011, 'D105101', 'P105102', '귀 이명', '2022-01-10 10:50:12');
INSERT INTO Treatments VALUES
(1041012, 'D104101', 'P104103', '팔목 화상', '2022-01-10 10:50:12');
SET foreign_key_checks = 0; 
SET foreign_key_checks = 1; 
# 차트
INSERT INTO charts VALUE('C1021001','1021001','D102101','P102101','감기 주사 및 약 처방');
INSERT INTO charts VALUE('C1031002','1031002','D103101','P103101','입원 치료');
INSERT INTO charts VALUE('C1021003','1021003','D102104','P102102','위내시경');
INSERT INTO charts VALUE('C1041004','1041004','D104101','P104101','피부 감염 방지 주사');
INSERT INTO charts VALUE('C1051005','1051005','D105101','P105101','비염 치료');
INSERT INTO charts VALUE('C1031006','1031006','D103101','P103102','목 견인치료');
INSERT INTO charts VALUE('C1041007','1041007','D104101','P104102','여드름 치료약 처방');
INSERT INTO charts VALUE('C1081008','1081008','D108101','P108101','발목깁스');
INSERT INTO charts VALUE('C1021009','1021009','D102104','P102103','주사처방');
INSERT INTO charts VALUE('C1071010','1071010','D107104','P107101','MRI 검사');
INSERT INTO charts VALUE('C1051011','1051011','D105101','P105102','귀 청소 및 약 처방');
INSERT INTO charts VALUE('C1041012','1041012','D104101','P104103','화상 크림약 처방');


# 문제 1
select doc_id, doc_name, doc_birth, b. dep_no, dep_name 
from doctors as a join departments as b on a.dep_no = b.dep_no;


# 문제 2
select nur_id, nur_name, nur_birth, b.dep_no, dep_name
from nurses as a join departments as b on a.dep_no = b.dep_no;


# 문제 3
select pat_id, pat_name, pat_jumin, pat_phone, b.doc_name, c.nur_name
from patients as a join doctors as b on a.doc_id = b.doc_id join nurses as c on b.dep_no = c.dep_no;



# 문제 4
select a.pat_name, b.doc_name, c.treat_contents, d. char_cintents, c.treat_datetime
from patients as a 
join doctors as b on a.doc_id = b.doc_id 
join treatments as c on b.doc_id = c.doc_id
join charts as d on c.treat_no = d.treat_no;



# 문제 5
select a.treat_no, b.pat_name, c.doc_name, a.treat_contents, a.treat_contents, a.treat_datetime
from treatments as a join patients as b on a.pat_id = b.pat_id 
join doctors as c on b.doc_id = c.doc_id
join departments as d on c.dep_no = d.dep_no
where dep_name = "외과";



# 문제 6
select a.treat_no, b.pat_name, c.doc_name, a.treat_contents, a.treat_contents, a.treat_datetime
from treatments as a join patients as b on a.pat_id = b.pat_id 
join doctors as c on b.doc_id = c.doc_id
join departments as d on c.dep_no = d.dep_no
where  treat_contents like "%화상%";



# 문제 7 
# 1번째 방법
select * from
(select 
	*,
    YEAR(NOW()) - `year` as `age`
	from
		(select 
			*,
			CONCAT('19', SUBSTRING(`pat_jumin`, 1, 2)) as `year`
		from `patients`) as a) as b
where `age` >= 30 and `age` < 40;

# 2번째 방법
select
	* 
from `patients` 
where 
	YEAR(NOW()) - CONCAT('19', left(`pat_jumin`, 2)) >= 30 
	and 
	YEAR(NOW()) - CONCAT('19', left(`pat_jumin`, 2)) < 40; 


# 3번쨰 방법
select * FROM patients
WHERE  (YEAR(NOW()) - CONCAT(19,SUBSTR(pat_jumin,1,2))+1) BETWEEN 30 AND 40;



# 문제 8
#left join 은 outer join의 일종
SELECT 
	`dep_manager`,
	`dep_name`
FROM `Departments` AS a
LEFT JOIN `Doctors` AS b ON a.dep_no = b.dep_no
WHERE `doc_id` IS NULL;


# 문제 9
# concat -- 컬럼 데이터와 컬럼 데이터를 연결합하여 하나의 스트링 문자열로 표시
# group_concat -- 특정컬럼의 각 결과값을 하나의 가로열로 표시합니다.
# GROUP_CONCAT 문자열 연결 / SEPARATOR 구분자
SELECT 
	GROUP_CONCAT(`pat_name` SEPARATOR '^') AS `환자들`
FROM `Patients` AS a
JOIN `Nurses` AS b ON a.nur_id = b.nur_id
WHERE `nur_name`='김태희';



# 문제 10
SELECT
	a.`nur_id`,
	`nur_name`,
	COUNT(*) AS `환자수`
FROM `Patients` AS a
JOIN `Nurses` AS b ON a.nur_id = b.nur_id
GROUP BY a.`nur_id`
ORDER BY `환자수` DESC
LIMIT 1;


