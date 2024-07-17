#날짜: 2024/07/15
#이름: 박준영
#내용: 데이터 모델링 실습하기 

#실습 6-1 ShopERD 작성



#실습 6-2 데이터 입력 
insert into `customer` values('c101', '김유신', '010-1234-1001', '경남 김해시', '2023-01-01');
insert into `customer` values('c102', '김춘추', '010-1234-1002', '경남 경주시', '2023-01-02');
insert into `customer` values('c103', '장보고', '010-1234-1003', '전남 완도군', '2023-01-03');
insert into `customer` values('c104', '강감찬', '010-1234-1004', '서울시 관악구', '2023-01-04');
insert into `customer` values('c105', '이순신', '010-1234-1005', '부산시 금정구', '2023-01-05');

insert into `product` values(1, '새우깡', 5000, 1500, '농심');
insert into `product` values(2, '초코파이', 2500, 2500, '오리온');
insert into `product` values(3, '포카칩', 3600, 1700, '오리온');
insert into `product` values(4, '양파링', 1250, 1800, '농심');
insert into `product` values(5, '죠리퐁', 2200, null, '크라운');

insert into `order` values(1, 'c102', 3, 2, '2023-01-01 13:15:10');
insert into `order` values(2, 'c101', 4, 1, '2023-01-01 13:15:12');
insert into `order` values(3, 'c102', 1, 1, '2023-01-01 13:15:14');
insert into `order` values(4, 'c103', 6, 5, '2023-01-01 13:15:16');
insert into `order` values(5, 'c105', 2, 1, '2023-01-01 13:15:18');



#실습 6-3 데이터 조회
select
	`orderNo`,
	`name`,
    `prodName`,
    `orderCount`,
    `orderDate`
from `order` as a 
join `customer` as b on a.`orderId` = b.`custId`
join `product`as c on a.`orderProduct` = c.`prodNo`;


select
	`orderNo`,
	`prodNo`,
    `prodName`,
    `price`,
	`orderCount`,
    `orderdate`
from `order` as a 
join `customer` as b on a.`orderId` = b.`custId`
join `product`as c on a.`orderProduct` = c.`prodNo`
where b.`name` = '김유신';


select
	sum(`price`*`orderCount`)
from `order` as a
join `product` as b on a.`orderProduct` = b.`prodNo`;


#실습 6-4 BankERD 작성



#실습 6-5 데이터 입력

insert into `bank_customer` values ('730423-1000001', '김유신', 1, '010-1234-1001', '경남 김해시');
insert into `bank_customer` values ('730423-1000002', '김춘추', 1, '010-1234-1002', '경남 김해시');
insert into `bank_customer` values ('730423-1000003', '장보고', 1, '010-1234-1003', '경남 김해시');
insert into `bank_customer` values ('102-12-51094', '(주)정보산업', 2, '010-1234-1001', '경남 김해시');
insert into `bank_customer` values ('930423-1000005', '이순신', 1, '010-1234-1001', '경남 김해시');

insert into `bank_account` values ('101-11-1001', 'S1', '자유저축예금', '730423-1000001', 1550000, '2011-04-11');
insert into `bank_account` values ('101-11-1002', 'S1', '자유저축예금', '930423-1000005', 260000, '2011-05-12');
insert into `bank_account` values ('101-11-1003', 'S1', '자유저축예금', '730423-1000003', 75000, '2011-06-13');
insert into `bank_account` values ('101-12-1001', 'S2', '기업전용예금', '102-12-51094', 15000000, '2011-07-14');
insert into `bank_account` values ('101-13-1001', 'S3', '정기저축예금', '730423-1000002', 1200000, '2011-08-15');

insert into`bank_transaction` values (1, '101-11-1001', 1, 50000, '2023-01-01 13:15:10');
insert into`bank_transaction` values (2, '101-12-1001', 2, 1000000, '2023-01-02 13:15:12');
insert into`bank_transaction` values (3, '101-11-1002', 3, 260000, '2023-01-03 13:15:14');
insert into`bank_transaction` values (4, '101-11-1002', 2, 100000, '2023-01-04 13:15:16');
insert into`bank_transaction` values (5, '101-11-1003', 3, 75000, '2023-01-05 13:15:18');
insert into`bank_transaction` values (6, '101-11-1001', 1, 150000, '2023-01-05 13:15:28');



#실습 6-6 데이터 조회 
select
	`c_no`,
	`c_name`,
    `c_phone`,
    `a_no`,
    `a_item_name`,
    `a_balance`
from `bank_customer` as a
join `bank_account` as b on a.`c_no` = b.`a_c_no`;


select
	`t__dist`,
	`t_amount`,
    `t_datetime`
from `bank_transaction` as a 
join `bank_customer` as b on a.`t__dist` = b.`c_dist`
where `c_name` = '이순신';


select
	`c_no`,
	`c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a
join `bank_account` as b on a.`c_no` = b.`a_c_no`
where `c_name` <> '(주)정보산업'  order by `a_balance` desc limit 1;


#실습 6-7 collegeERD 모델링 실습
#실습 6-8
#실습 6-9