// annotate bygl.ena.pumrpSrv.SgnvPrcsMrs with {
//   ID @title: 'ID';
//   L2Process @title: 'L2 Process';
//   L2Desc @title: 'L2 Description';
//   L3Process @title: 'L3 Process';
//   L3Desc @title: 'L3 Description';
//   L4Process @title: 'L4 Process';
//   L4Desc @title: 'L4 Description';
//   VS @title: 'VS';
//   MAR @title: 'MAR';
//   MARDesc @title: 'MAR Description'
// };

// annotate bygl.ena.pumrpSrv.SgnvPrcsMrs with @UI.LineItem: [
//  { $Type: 'UI.DataField', Value: ID },
//  { $Type: 'UI.DataField', Value: L2Process },
//  { $Type: 'UI.DataField', Value: L2Desc },
//  { $Type: 'UI.DataField', Value: L3Process },
//  { $Type: 'UI.DataField', Value: L3Desc },
//  { $Type: 'UI.DataField', Value: L4Process },
//  { $Type: 'UI.DataField', Value: L4Desc },
//  { $Type: 'UI.DataField', Value: VS },
//  { $Type: 'UI.DataField', Value: MAR },
//  { $Type: 'UI.DataField', Value: MARDesc }
// ];

// annotate bygl.ena.pumrpSrv.SgnvPrcsMrs with @UI.FieldGroup #Main: {
//   $Type: 'UI.FieldGroupType', Data: [
//  { $Type: 'UI.DataField', Value: ID },
//  { $Type: 'UI.DataField', Value: L2Process },
//  { $Type: 'UI.DataField', Value: L2Desc },
//  { $Type: 'UI.DataField', Value: L3Process },
//  { $Type: 'UI.DataField', Value: L3Desc },
//  { $Type: 'UI.DataField', Value: L4Process },
//  { $Type: 'UI.DataField', Value: L4Desc },
//  { $Type: 'UI.DataField', Value: VS },
//  { $Type: 'UI.DataField', Value: MAR },
//  { $Type: 'UI.DataField', Value: MARDesc }
//   ]
// };

// annotate bygl.ena.pumrpSrv.SgnvPrcsMrs with @UI.Facets: [
//   { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
// ];

// annotate bygl.ena.pumrpSrv.SgnvPrcsMrs with @UI.SelectionFields: [
//   ID
// ];

