/* zoneの新規登録数 */
SELECT COUNT(id)
FROM
RCP_Zone__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY

/* 候補地の新規登録数 */
SELECT COUNT(id)
FROM
RCP_PropSiteInfo__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY

/* 始業報告の登録数 */
SELECT COUNT(id)
FROM
RCP_WorkReportHeaderInfo__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY
AND RCP_WRH_BeginFlag__c = True
AND RCP_WRH_DeleteFlag__c = false

/* 業務報告の登録数 */
SELECT COUNT(id)
FROM
RCP_WorkReportDetailInfo__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY
AND RCP_WRD_SerialNo__c = 1
AND RCP_WRD_SubmittedFlag__c = True
AND RCP_WRD_DeleteFlag__c = false

/* 終業報告の登録数 */
SELECT COUNT(id)
FROM
RCP_WorkReportHeaderInfo__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY
AND RCP_WRH_EndFlag__c = True
AND RCP_WRH_DeleteFlag__c = false

/* 契約書登録数 */
SELECT COUNT(id)
FROM
RCP_ContractInformation__c
WHERE
CreatedDate >= 2021-10-03T07:00:00Z
AND CreatedDate <= TODAY

/* 候補地一覧CSVのDL数 */
/*
①OutSystems ServiceCenterを開く。
②Monitoring > GeneralLogを開く。
③Messegeに「CSVOut」を指定する。
④Fromに「2021-10-03 15:00:00」を指定する。
⑤Filterボタンを押下する。
⑥Export to excelボタンを押下し、出力されたExcelのログ件数（行数）を記録する。
*/
