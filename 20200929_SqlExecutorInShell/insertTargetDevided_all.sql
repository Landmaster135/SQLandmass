INSERT INTO "PIOAP"."SEARCH_COUNT_FOR_CC_INFO_ALL_TMP2" SELECT * FROM SEARCH_COUNT_FOR_CC_INFO_ALL WHERE INFO_NUMBER >= '27000000000';

/* 1.	ソーステーブルを元にコピーテーブルを作成 */
create column table <partitioned table> like <source table>;
/* 2.	(Round Robinのみ) PKを削除 */
alter table <partitioned table>  drop primary key;
/* 3.	パーティション作成 */
(HASH) alter table <partitioned table> partition by HASH(<hash key>) partitions <partition number:2, 4, 8>;
(Round robin) alter table <partitioned table> partition by RoundRobin partitions <partition number: 2, 4, 8>;
/* 4.	データをINSERT */
Insert into <partitioned table> select top 10000000 * from <source table>;
/* 5.	CSV Export */
export <partitioned table> as CSV into '<path>' with REPLACE THREADS 10;


create column table <partitioned table> like <source table>;
alter table <partitioned table>  drop primary key;
(HASH) alter table <partitioned table> partition by HASH(<hash key>) partitions <partition number:2, 4, 8>;
(Round robin) alter table <partitioned table> partition by RoundRobin partitions <partition number: 2, 4, 8>;
Insert into <partitioned table> select top 10000000 * from <source table>;
export <partitioned table> as CSV into '<path>' with REPLACE THREADS 10;
