sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'bygl.ena.pumrpapp',
            componentId: 'pumrplineObjectPage',
            contextPath: '/pumrphead/roles'
        },
        CustomPageDefinitions
    );
});