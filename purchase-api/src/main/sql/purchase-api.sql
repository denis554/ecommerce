create table if not exists cart (id varchar(255) not null, version bigint not null, added_at timestamp, card varchar(255) not null, edited_at timestamp, customer varchar(255) not null, expires_on timestamp, email varchar(255) not null, primary key (id));
create table if not exists item (id varchar(255) not null, version bigint not null, added_at timestamp, product_id varchar(32) not null, edited_at timestamp, amount integer not null, cart_id varchar(255) not null, primary key (id));
alter table item add constraint FK4g2q77pbbf0faqae5uywbsodk foreign key (cart_id) references cart;