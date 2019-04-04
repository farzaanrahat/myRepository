 /*
 *******************************************************
 * FILE NAME   : create_tbl_GSMAC_POSITION_PUBLISHER.sql
 *
 * DESC        :
 *
 * APPLICATION :
 * MODULE      :
 * HISTORY     :
 * Date	      	         	Modified By     	  Reasongit branch
 * ----	      				-----------     	----------------
 * 03/27/2019	            Syed Rahat	      01. Initial Version
 *
 *
 ********************************************************/

-------------------------------------------------------------------------
--THIS SCRIPT IS THE COPYRIGHTED, PROPRIETARY PROPERTY OF
--STATE STREET BANK AND TRUST COMPANY AND ITS SUBSIDIARIES AND
--AFFILIATES WHICH RETAIN ALL RIGHT, TITLE AND INTEREST THEREIN.
-------------------------------------------------------------------------

-- ###
-- ###  IAL_CVW : GSMAC_POSITION_PUBLISHER
-- ###

BEGIN
 IAL_CVW.pkg_cloud_deploy.sp_drop_ExistingObject('GSMAC_POSITION_PUBLISHER','TABLE');
END;
/

 Create table IAL_CVW.GSMAC_POSITION_PUBLISHER 
   (POSITION_SEQ             NUMBER                       NOT NULL, 
	POS_FUND             VARCHAR2(4 CHAR)                 NOT NULL, 
	POS_SETL_LOC         VARCHAR2(3 CHAR)                 NOT NULL, 
	POS_CUSIP            VARCHAR2(9 CHAR)                 NOT NULL, 
	ACT_TRD_ID           VARCHAR2(11 CHAR)                NOT NULL, 
	ACT_SETL_ACCT        VARCHAR2(4 CHAR), 
	SECURITY_ID              NUMBER, 
	POS_TOTAL               NUMBER(15,3), 
	POS_ASOF_DATE              DATE, 
	SOURCE_CORR_ID           NUMBER                       NOT NULL, 
	LASTMODSIGNON         VARCHAR2(30 CHAR), 
	LASTMODDATETIME         TIMESTAMP (6)) 
	pctfree 0
/
