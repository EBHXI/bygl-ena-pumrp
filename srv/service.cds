using { bygl.ena.pumrp as pumrp } from '../db/schema.cds';

@path: '/service/bygl_ena_pumrp'
@requires: 'authenticated-user'
service bygl.ena.pumrpSrv {
  @odata.draft.enabled
  entity SgnvPrcsMrs as projection on pumrp.SgnvPrcsMrs;
  entity MrDrErs as projection on pumrp.MrDrErs;
  entity ErCntryCWIDs as projection on pumrp.ErCntryCWIDs;
  entity pumrphead as projection on pumrp.pumrphead;
  entity pumrpline as projection on pumrp.pumrpline;
}