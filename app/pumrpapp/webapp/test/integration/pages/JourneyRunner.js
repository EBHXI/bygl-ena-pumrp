sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bygl/ena/pumrpapp/test/integration/pages/pumrpheadList",
	"bygl/ena/pumrpapp/test/integration/pages/pumrpheadObjectPage",
	"bygl/ena/pumrpapp/test/integration/pages/pumrplineObjectPage"
], function (JourneyRunner, pumrpheadList, pumrpheadObjectPage, pumrplineObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bygl/ena/pumrpapp') + '/test/flp.html#app-preview',
        pages: {
			onThepumrpheadList: pumrpheadList,
			onThepumrpheadObjectPage: pumrpheadObjectPage,
			onThepumrplineObjectPage: pumrplineObjectPage
        },
        async: true
    });

    return runner;
});

