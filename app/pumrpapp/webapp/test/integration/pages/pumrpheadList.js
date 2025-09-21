sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'bygl.ena.pumrpapp',
            componentId: 'pumrpheadList',
            contextPath: '/pumrphead'
        },
        CustomPageDefinitions
    );
});