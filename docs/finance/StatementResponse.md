# XeroRuby::Finance::StatementResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**statement_id** | **String** | Xero Identifier of statement | [optional] 
**start_date** | **Date** | Start date of statement | [optional] 
**end_date** | **Date** | End date of statement | [optional] 
**imported_date_time_utc** | **DateTime** | Utc date time of when the statement was imported in Xero | [optional] 
**import_source** | **String** | Indicates the source of the statement data. Either imported from 1) direct bank feed OR 2) manual customer entry or upload. Manual import sources are STMTIMPORTSRC/MANUAL, STMTIMPORTSRC/CSV, STMTIMPORTSRC/OFX, Ofx or STMTIMPORTSRC/QIF. All other import sources are direct and, depending on the direct solution, may contain the name of the financial institution. | [optional] 
**start_balance** | **BigDecimal** | Opening balance sourced from imported bank statements (if supplied). Note, for manually uploaded statements, this balance is also manual and usually not supplied. Where not supplied, the value will be 0. | [optional] 
**end_balance** | **BigDecimal** | Closing balance sourced from imported bank statements (if supplied). Note, for manually uploaded statements, this balance is also manual and usually not supplied. Where not supplied, the value will be 0. | [optional] 
**indicative_start_balance** | **BigDecimal** | Opening statement balance calculated in Xero (&#x3D; bank account conversion balance plus sum of imported bank statement lines). Note: If indicative statement balance doesn&#39;t match imported statement balance for the same date, either the conversion (opening at inception) balance in Xero is wrong or there&#39;s an error in the bank statement lines in Xero. Ref: https://central.xero.com/s/article/Compare-the-statement-balance-in-Xero-to-your-actual-bank-balance?userregion&#x3D;true  | [optional] 
**indicative_end_balance** | **BigDecimal** | Closing statement balance calculated in Xero (&#x3D; bank account conversion balance plus sum of imported bank statement lines). Note: If indicative statement balance doesn&#39;t match imported statement balance for the same date, either the conversion (opening at inception) balance in Xero is wrong or there&#39;s an error in the bank statement lines in Xero. Ref: https://central.xero.com/s/article/Compare-the-statement-balance-in-Xero-to-your-actual-bank-balance?userregion&#x3D;true   | [optional] 
**statement_lines** | [**Array&lt;StatementLineResponse&gt;**](StatementLineResponse.md) | List of statement lines | [optional] 

## Code Sample

```ruby
require 'XeroRuby::Finance'

instance = XeroRuby::Finance::StatementResponse.new(statement_id: null,
                                 start_date: null,
                                 end_date: null,
                                 imported_date_time_utc: null,
                                 import_source: null,
                                 start_balance: null,
                                 end_balance: null,
                                 indicative_start_balance: null,
                                 indicative_end_balance: null,
                                 statement_lines: null)
```


