/* checksum : 88b8e2c093a3edfed5ada83cf15e1582 */
@cds.external : true
@cds.persistence.skip : true
@Capabilities.SearchRestrictions : { Searchable: false }
@Capabilities.DeleteRestrictions : { Deletable: false }
@Core.OptimisticConcurrency : [  ]
@Capabilities.FilterRestrictions : { FilterExpressionRestrictions: [ {
  Property: BankCountry,
  AllowedExpressions: 'MultiValue'
}, {
  Property: BankInternalID,
  AllowedExpressions: 'MultiValue'
}, {
  Property: Region,
  AllowedExpressions: 'MultiValue'
}, {
  Property: SWIFTCode,
  AllowedExpressions: 'MultiValue'
}, {
  Property: BankNetworkGrouping,
  AllowedExpressions: 'MultiValue'
}, {
  Property: IsMarkedForDeletion,
  AllowedExpressions: 'MultiValue'
}, {
  Property: Bank,
  AllowedExpressions: 'MultiValue'
}, {
  Property: BankCategory,
  AllowedExpressions: 'MultiValue'
} ] }
@Capabilities.UpdateRestrictions : { QueryOptions: { SelectSupported: true } }
entity Bank.Bank {
  @Common.FieldControl : #Mandatory
  @Common.IsUpperCase : true
  @Common.Label : 'Bank Country/Region'
  @Common.Heading : 'C/R'
  @Common.QuickInfo : 'Country/Region Key of Bank'
  key BankCountry : String(3) not null;
  @Common.FieldControl : #Mandatory
  @Common.IsUpperCase : true
  @Common.Label : 'Bank Key'
  @Common.QuickInfo : 'Bank Keys'
  key BankInternalID : String(15) not null;
  @Common.FieldControl : #Mandatory
  @Common.Label : 'Bank Name'
  @Common.Heading : 'Name of Financial Institution'
  @Common.QuickInfo : 'Name of Financial Institution'
  BankName : String(60) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'Street'
  @Common.QuickInfo : 'Street and House Number'
  StreetName : String(35) not null;
  @Common.Label : 'City'
  CityName : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'SWIFT/BIC'
  @Common.QuickInfo : 'SWIFT/BIC for International Payments'
  SWIFTCode : String(11) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Bank group'
  @Common.Heading : 'BG'
  @Common.QuickInfo : 'Bank group (bank network)'
  BankNetworkGrouping : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Deletion Indicator'
  @Common.Heading : 'DlI'
  IsMarkedForDeletion : Boolean not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Bank Number'
  Bank : String(15) not null;
  @Common.Label : 'Bank Branch'
  Branch : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Internal bank'
  @Common.Heading : 'Internal Bank Category'
  @Common.QuickInfo : 'Internal bank category'
  BankCategory : String(1) not null;
  SAP__Messages : many Bank.SAP__Message;
};

@cds.external : true
type Bank.SAP__Message {
  code : LargeString not null;
  message : LargeString not null;
  target : LargeString null;
  additionalTargets : many LargeString not null;
  transition : Boolean not null;
  @odata.Type : 'Edm.Byte'
  numericSeverity : Integer not null;
  longtextUrl : LargeString null;
};

@cds.external : true
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [ 'eq', 'ne', 'gt', 'ge', 'lt', 'le', 'and', 'or', 'contains', 'startswith', 'endswith', 'any', 'all' ]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@Capabilities.KeyAsSegmentSupported : null
@Capabilities.AsynchronousRequestsSupported : null
service Bank {};

