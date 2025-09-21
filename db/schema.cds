namespace bygl.ena.pumrp;
using { cuid, managed } from '@sap/cds/common';

entity SgnvPrcsMrs : cuid , managed {
  Key ID: UUID @mandatory;
	  L2Process: String(30);
	  L2Desc : String(70);
	  L3Process: String(30);
	  L3Desc: String(70);
	  L4Process: String(30);
	  L4Desc: String(80);
	  VS: String(6);
	  MAR: String(40);
	  MARDesc: String(100);
}

entity MrDrErs : cuid, managed {
  Key ID : UUID @mandatory;
	  MAR: String(40);
	  DAR: String(50);
	  DARDesc: String(100);
	  OrgSet: String(80);
	  ER: String(100);
    Persona: String(50);
}

entity ErCntryCWIDs : cuid, managed {
  key ID : UUID @mandatory;
	  ER: String(100);
	  CWID: String(8);
	  Country: String(20);
}


define view pumrphead 
 as select from SgnvPrcsMrs  as procs {
  Key ID,
  L4Process,
  L4Desc,
  VS,
  MAR,
  MARDesc,
  roles : Association to many pumrpline on roles.MAR = $self.MAR
 }
  
define view pumrpline as
  select from MrDrErs as role {
    key ID,
    MAR,
    DAR,
    DARDesc,
    OrgSet,
    ER,
    Persona,
    users : Association to many ErCntryCWIDs on users.ER = $self.ER
  }
