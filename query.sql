insert into Entity(EntityName, EntityAlias) values ('ICICI Bank','ICICIB');
insert into Entity(EntityName, EntityAlias) values ('American express','MYAMEX');
insert into Entity(EntityName, EntityAlias) values ('SBI','CBSSBI');
insert into Entity(EntityName, EntityAlias) values ('Citi Bank','CITIBA');

insert into Account(UserId,EntityId,AccType,AccRef) select usr.UserId, Ent.EntityId,'SVNGS','xx816' from UserData usr, Entity Ent where usr.Phone1='' and  Ent.EntityAlias='ICICIB';
insert into Account(UserId,EntityId,AccType,AccRef) select usr.UserId, Ent.EntityId,'CRDTC','**41008' from UserData usr, Entity Ent where usr.Phone1='' and  Ent.EntityAlias='MYAMEX';
insert into Account(UserId,EntityId,AccType,AccRef) select usr.UserId, Ent.EntityId,'SVNGS','XXXXX987073' from UserData usr, Entity Ent where usr.Phone1='' and  Ent.EntityAlias='CBSSBI';
insert into Account(UserId,EntityId,AccType,AccRef) select usr.UserId, Ent.EntityId,'CRDTC','2331' from UserData usr, Entity Ent where usr.Phone1='' and  Ent.EntityAlias='CITIBA';

insert into Account(AccId,UserId,EntityId,TxDate,TxType,TxDetails,TxAmt) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-04-05','DEBIT','Info: LBPUNXX09097','46159.00' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%ICICIB%' and Acc.AccRef like '%816%';
insert into Account(AccId,UserId,EntityId,TxDate,TxType,TxDetails,TxAmt) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-04-07','DEBIT','BD MAHA ELEC','2100.00' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%MYAMEX%' and Acc.AccRef like '%41008%';
insert into Account(AccId,UserId,EntityId,TxDate,TxType,TxDetails,TxAmt) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-04-08','DEBIT','Transferred to Mr. SHREYAS ABHIJIT','13300.00' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%CBSSBI%' and Acc.AccRef like '%XXXXX987073%';
insert into Account(AccId,UserId,EntityId,TxDate,TxType,TxDetails,TxAmt) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-04-09','DEBIT','SHAAN ENTERPRISES','2100.00' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%CITIBA%' and Acc.AccRef like '%2331%';

insert into Events(AccId,UserId,EntityId,EventDate,EventDesc) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-04-05','EMI of Rs. 46159 towards ICICI Bank Loan Account XX9097' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%ICICIB%' and Acc.AccRef like '%816%';
insert into Events(AccId,UserId,EntityId,EventDate,EventDesc) select Acc.Acc_id, usr.UserId, Ent.EntityId,'2021-05-10','Payment due' from UserData usr, Entity Ent, Account Acc where usr.Phone1='' and  Ent.EntityAlias like '%CITIBA%' and Acc.AccRef like '%2331%';