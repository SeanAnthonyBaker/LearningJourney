sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/epicList',
		'project1/test/integration/pages/epicObjectPage',
		'project1/test/integration/pages/storiesObjectPage'
    ],
    function(JourneyRunner, opaJourney, epicList, epicObjectPage, storiesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheepicList: epicList,
					onTheepicObjectPage: epicObjectPage,
					onThestoriesObjectPage: storiesObjectPage
                }
            },
            opaJourney.run
        );
    }
);