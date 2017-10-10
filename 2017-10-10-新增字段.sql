alter table tbl_activity add start_Time datetime ;
alter table tbl_activity add end_Time datetime ;

alter table tbl_article add start_Time datetime ;
alter table tbl_article add end_Time datetime ;

alter table tbl_training_course add start_Time datetime ;
alter table tbl_training_course add end_Time datetime ;

alter table tbl_enroll add user_id int(11) ;

alter table tbl_fault_repair add user_id int(11) ;