# 날짜: 2024/07/11
# 이름: 박준영
# 내용: SQL연습문제4

# 실습 4-1
create database`theater`;
create user 'theater'@'%'identified by'1234';
grant all privileges on theater.*to'theater'@'%';
flush privileges;
use`theater`;

# 실습 4-2
create table`movies`(
	`movie_id`		int auto_increment primary key,
    `title`			varchar(30) not null,
    `genre`			varchar(10) not null,
    `release_date`	date
    );
    
create table`customers`(
	`customer_id`	int auto_increment primary key,
    `name`		varchar(20) not null,
	`email`		varchar(50) not null,
    `phone`		char(13) not null
    );
    
create table`bookings`(
	`booking_id`	int primary key,
    `customer_id`	int not null,
    `movie_id`		int not null,
    `num_tickets`	int not null,
    `booking_date`	datetime not null
    );

# 실습 4-3
insert into`movies`values(1,'쇼생크의 탈출','드라마','1994-10-14');
insert into`movies`values(2,'타이타닉','로맨스','1997-3-24');
insert into`movies`values(3,'탑건','액션','1987-07-16');
insert into`movies`values(4,'쥬라기공원','액션','1994-02-11');
insert into`movies`values(5,'글래디에이터','액션','2000-05-03');
insert into`movies`values(6,'시네마천국','드라마','1995-04-12');
insert into`movies`values(7,'미션임파써블','액션','1995-11-11');
insert into`movies`values(8,'노트북','로맨스','2003-08-23');
insert into`movies`values(9,'인터스텔라','SF','2011-05-26');
insert into`movies`values(10,'아바타','SF','2010-02-10');

insert into`customers`values(1,'김유신','kys@example.com','010-1234-1001');
insert into`customers`values(2,'김춘추','kcc@example.com','010-1234-1002');
insert into`customers`values(3,'장보고','jbg@example.com','010-1234-1003');
insert into`customers`values(4,'강감찬','kgc@example.com','010-1234-1004');
insert into`customers`values(5,'이순신','lss@example.com','010-1234-1005');

insert into`bookings`values(101,1,1,2,'2023-01-10 00:00:00');
insert into`bookings`values(102,2,2,3,'2023-01-11 00:00:00');
insert into`bookings`values(103,3,2,2,'2023-01-13 00:00:00');
insert into`bookings`values(104,4,3,1,'2023-01-17 00:00:00');
insert into`bookings`values(105,5,5,2,'2023-01-21 00:00:00');
insert into`bookings`values(106,3,8,2,'2023-01-21 00:00:00');
insert into`bookings`values(107,1,10,4,'2023-01-21 00:00:00');
insert into`bookings`values(108,2,9,1,'2023-01-22 00:00:00');
insert into`bookings`values(109,5,7,2,'2023-01-23 00:00:00');
insert into`bookings`values(110,3,4,2,'2023-01-23 00:00:00');
insert into`bookings`values(111,1,6,1,'2023-01-24 00:00:00');
insert into`bookings`values(112,3,5,3,'2023-01-25 00:00:00');



# 실습 4-4
select `title` from `movies`;


# 실습 4-5
select*from`movies` where `genre` = '로맨스';

# 실습 4-6 ------------
select `title`,`release_date`from`movies`where`release_date` > '2010-01-01';


# 실습 4-7
select booking_id, booking_date from bookings where num_tickets >= 3;


# 실습 4-8
select*from bookings where booking_date < '2023-01-20';



# 실습 4-9 !!!!!!!!!!!!!!!!
select*from movies where release_date between '1990-01-01' and '1999-12-31';
# betwwen 연산자 사용


# 실습 4-10
select*from bookings order by booking_date desc limit 3;
# limit 연산자


# 실습 4-11
select title, release_date from movies order by release_date asc limit 1;


# 실습 4-12
select concat(title, '-',release_date) as moive_info from movies
where title like '%공원%' order by release_date asc limit 1;
#like문을 활용한 특정 문자 포함 조회

# 실습 4-13
select booking_date,title from bookings join movies using (movie_id) 
where customer_id = 2;
# using 사용

# 실습 4-14 !!!!!!!!!!!!!!!
select c.`name`, c.`phone`, b.`booking_date`, m.`title` from `bookings` b
join `customers` c on b.`customer_id` = c.`customer_id`
join `movies` m on b.`movie_id` = m.`movie_id`;
#join 연산자

# 실습 4-15
select m.genre, avg(b.num_tickets) as avg_tickets
from bookings b join movies m on b.movie_id=m.movie_id group by m.genre;
#group by 사용

# 실습 4-16 !!!!
select c.`name`, avg(b.num_tickets) as avg_tickets
from bookings b join customers c on b.customer_id = c.customer_id group by c.name;



# 실습 4-17
select c.name, sum(b.num_tickets) as `전체 예매 티켓 수` 
from bookings b 
join customers c on b.customer_id = c.customer_id 
group by c.customer_id 
order by `전체 예매 티켓 수`desc;


# 실습 4-18
select 
b.booking_id,
b.movie_id,
c.name,
b.booking_date
from bookings b join customers c on b.customer_id = c.customer_id
order by b.booking_date asc limit 1;


# 실습 4-19
select
	genre,title,release_date
from movies
where(genre,release_date) in (select genre, max(release_date) from movies group by genre);

# 실습 4-20
select*from movies
where movie_id in(
	select movie_id from bookings
    where customer_id = (select customer_id from customers where name = '김유신'));


# 실습 4-21
select name, email from customers
where customer_id =(
	select customer_id
    from bookings
    group by customer_id
    order by sum(num_tickets)desc
    limit 1
    );
  

# 실습 4-22
select*from bookings
where num_tickets > (select avg(num_tickets)from bookings);


# 실습 4-23



# 실습 4-24
# 실습 4-25
# 실습 4-26
# 실습 4-27
# 실습 4-28
# 실습 4-29
# 실습 4-30