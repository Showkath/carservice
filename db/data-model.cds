namespace com.sap.cap.car.odata2.ODataCarsSchema;
using { User, Country, managed } from '@sap/cds/common';
entity Car  @(restrict: [ 
    { grant: ['WRITE'], to: 'admin' }
  ]){
  key ID : Integer;
  Model  :  String(100) not null default 'BMW';
  ManufacturerId : Association to Manufacturer;
  Price  : Integer not null;
  Currency  :  String(5) default 'Euro' ;
  ModelYear  :   String(4);
  Updated  :  DateTime;
  ImagePath  :  String;
}
entity Manufacturer  @(restrict: [ 
    { grant: ['READ','WRITE'], to: 'admin' }
    //,{ grant: 'READ', where: 'Name = $user' },
  ])
  {
  key ID : Integer;
  Name   :  String(100) not null;
  Address  :  String;
  Updated  :  DateTime;
}

