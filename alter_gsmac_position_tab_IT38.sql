/* Modify SMAC POSITION table*/
/* 1st step ... rename the column to status*/
ALTER TABLE IAL_CVW.SMAC_POSITION
ADD (ASOF_PEND_LOAN_DEL NUMBER(15,3));

ALTER TABLE IAL_CVW.SMAC_POSITION
ADD (POS_TOTAL NUMBER(15,3));

/* 2nd step ... ADD ERROR_TXT column*/
ALTER TABLE IAL_CVW.SMAC_POSITION_HISTORY
ADD (ASOF_PEND_LOAN_DEL NUMBER(15,3));

ALTER TABLE IAL_CVW.SMAC_POSITION_HISTORY
ADD (POS_TOTAL NUMBER(15,3));







For Owner / Table_Name / Size 


SELECT
   owner, 
   table_name, 
   TRUNC(sum(bytes)/1024/1024) "SIZE in MB"
FROM
(SELECT segment_name table_name, owner, bytes
 FROM dba_segments
 WHERE segment_type IN ('TABLE', 'TABLE PARTITION', 'TABLE SUBPARTITION')
 UNION ALL
 SELECT i.table_name, i.owner, s.bytes
 FROM dba_indexes i, dba_segments s
 WHERE s.segment_name = i.index_name
 AND   s.owner = i.owner
 AND   s.segment_type IN ('INDEX', 'INDEX PARTITION', 'INDEX SUBPARTITION')
 UNION ALL
 SELECT l.table_name, l.owner, s.bytes
 FROM dba_lobs l, dba_segments s
 WHERE s.segment_name = l.segment_name
 AND   s.owner = l.owner
 AND   s.segment_type IN ('LOBSEGMENT', 'LOB PARTITION')
 UNION ALL
 SELECT l.table_name, l.owner, s.bytes
 FROM dba_lobs l, dba_segments s
 WHERE s.segment_name = l.index_name
 AND   s.owner = l.owner
 AND   s.segment_type = 'LOBINDEX')
WHERE owner like 'IAL%'
GROUP BY table_name, owner
-- HAVING SUM(bytes)/1024/1024 > 10  /* Ignore really small tables */
ORDER BY SUM(bytes) desc
;
