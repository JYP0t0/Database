#날짜 : 2024/07/05
#이름 : 박준영
#내용 : 5장 데이터베이스 기체 

# 실습 5-1	인덱스 조회
show index from `user1`;
show index from `user2`;
show index from `user3`;


# 실습 5-2 인덱스 생성 및 적용
create index `idx_user1_uid` on `user1`(`uid`);
analyze table `user1`;




# 실습 5-3 인덱스 삭제
drop index idx_user1_uid on user1;


# 실습 5-4 뷰 생성
create view `vw_user1` as (select `name`, `hp`, `age` from `user1`);
create view `vw_user4_age_under30` as (select*from `user4` where `age` < 30);
create view `vm_member_with_sales` as (	
    select 
		a.`uid` as `직원아이디`,
		b.`name` as `직원이름`,
		b.`pos` as `직급`,
		c.`name` as `부서명`,
		a.`year` as `매출년도`,
		a.`month` as `월`,
		a.`sale` as `매출액`
	from `Sales` as a
    join `Member` as b on a.uid = b.uid
    join `Department` as c on b.dep = c.depNo
);



# 실습 5-5 뷰 조회
# 실습 5-6 뷰 삭제
drop view `vw_user1`;
drop view `vw_user4_age_under30`;
drop view `vm_member_with_sales`;
# 실습 5-7
# 실습 5-8
# 실습 5-9
# 실습 5-10
# 실습 5-11
