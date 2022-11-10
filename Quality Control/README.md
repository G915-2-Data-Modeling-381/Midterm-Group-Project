### Quality Control
*Handled by Amber Garcia*

---

#### Additional Steps Taken Towards Quality Control
- [ ] Add the proper user initials to all existing UDTs, save as ALPHA state before proceeding with removal of UDT

- [ ] Count UDTs (list is at bottom of file), 71 total

- [ ] Final count after removals, 49 total

---

### REMOVAL OF UDTS

Each person's UDTs are examined based on number of recurrances. Tried to keep the number of deletions simple.

#### dStrings (Has the most duplicates)

**sdName** 
(+) Updated AG: sdName to sdNameStrings
(-) Removed WL: sdNameString_WL , udtName_WL
(-) Removed AN: sdName_AN

**sdAddressString**
(+) Keep AN: udtAddressLine , udtPostalCode, udtState
(+) Keep WL: udtCity, udtRegion
(+) Keep AG: udtCountry
(>) Move WL/AG: udtCity, udtRegion, udtCountry --> sdAddressString_AN
(-) Remove AN / WL / AG: All other types under respective sdAddressStrings that contest with the above (Anything under sdAddresString_AN, sdAddressString_WL, or sdLocation_AG)

**sdTitle**
(>) Move AG: udtTitle_AG --> sdTitle_JG
(~) Rename AG: udtTitle_AG --> udtTitleOfCourtesy_AG

**sdContactNumber**
(>) Move AN: udtPhoneNumber_AN --> sdContactNumber_AG
(-) Remove AN: Constraint CK_TimeStamp_AN, incorect typing
(-) Remove AG: udtPhoneNumber_AG
(-) Remove WL: udtPhone_WL

REQUEST: Add AG defaults, modify Wade Constraint for phone numbers to add onto udtPhoneNumber_AN. Maybe add data type for area code (+#) number extension on Phone.

**sdFlagCharacter**
(~) Rename JG: sdFlagCharacterString_JG --> sdFlagCharacter_JG
(>) Move WL: udtFlag_WL --> sdFlagCharacter_JG
(~) Rename WL: udtFlag_WL --> udtYesNoFlag_WL

**sdMiscellanousStrings**
(~) Add AG: sdMiscellanousStrings_AG
(>) Move WL: udtNotes_WL --> sdMiscellanousStrings
(>) Move AN: udtClassTime_AN --> sdMiscellanousStrings

#### dDateTime
(-) Remove JG: sdDateDatetime_JG, udtYearMonthDay_JG, udtTimeStampNow_JG
(-) Remove AG: sdSystemDateTime_AG, udtDateAdded_AG
(-) Remove WL: udtAuditTriggeredTimestamp_WL
(+) Add AG: sdAuditSysTime_AG
(>) Move WL: udtAuditTriggeredTimestamp_WL, udtSysEnd_WL, udtSysStart_WL


---

### Old Domain List
dGroupMiterm
dBlob
dString
dNumber
dDateTime
sdDateDatetime_JG
sdFlagCharacterString
sdIntegerNumber_JG
sdPositiveIntegerNumber_JG
sdKeyIntegerNumber_JG
sdMoneyNumber_JG
sdNanosecondPreciseDatetime_JG
sdTitleString_JG
udtContactTitle_JG
udtCurrency_JG
udtGrade_JG
udtSequenceNumber_JG
udtSurrogateKeyInteger_JG
udtTimeStampNow_JG
udtTriggerOption_JG
udtYearMonthDay_JG
sdAddressString_AN
AddressLine_AN
City_AN
ClassTime_AN
Country_AN
Name_AN
PhoneNumber_AN
PostalCode_AN
State_AN
TimeStamp_AN
sdNameString_WL
udtAuditTriggeredTimestamp_WL
sdAddressString_WL
udtCity_WL
udtCountry_WL
udtName_WL
udtNotes_WL
udtPhone_WL
udtQuantity_WL
udtRegion_WL
udtStreet_WL
udtSysEnd_WL
udtSysStart_WL
udtUnitPrice_WL
udtZipCode_WL
udtFlag_WL
sdContactNumber_AG
sdLocation_AG
sdName_AG
sdSystemDateTime_AG
udtAddress_AG
udtCompanyName_AG
udtCountry_AG
udtDateAdded_AG
udtFaxNumber_AG
udtFullName_AG
udtTitle_AG
udtState_AG
udtRegion_AG
udtPostalCode_AG
udtPhoneNumber_AG
udtLastName_AG
sdYearMonthDay
udtHireDate_AG
udtMonth_AG
udtDay_AG
udtFirstName_AG
udtBirthDate_AG
udtYear_AG
udtCity_AG

### New Domain List

dGroupMiterm
dBlob
dString
dNumber
dDateTime
sdFlagCharacterString
sdIntegerNumber_JG
sdPositiveIntegerNumber_JG
sdKeyIntegerNumber_JG
sdMoneyNumber_JG
sdNanosecondPreciseDatetime_JG
sdTitleString_JG
udtContactTitle_JG
udtCurrency_JG
udtGrade_JG
udtSequenceNumber_JG
udtSurrogateKeyInteger_JG
udtTriggerOption_JG
sdAddressString_AN
udtAddressLine_AN
udtClassTime_AN
udtPhoneNumber_AN
udtPostalCode_AN
udtState_AN
udtTimeStamp_AN
udtAuditTriggeredTimestamp_WL
udtCity_WL
udtNotes_WL
udtQuantity_WL
udtSysEnd_WL
udtSysStart_WL
udtUnitPrice_WL
udtFlag_WL
sdContactNumber_AG
sdNameString_AG
udtCompanyName_AG
udtCountry_AG
udtFaxNumber_AG
udtFullName_AG
udtTitleOfCourtesy_AG
udtRegion_AG
udtLastName_AG
sdYearMonthDay_AG
udtHireDate_AG
udtMonth_AG
udtDay_AG
udtFirstName_AG
udtBirthDate_AG
udtYear_AG
