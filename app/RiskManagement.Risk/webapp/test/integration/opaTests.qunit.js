sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskManagement/Risk/test/integration/FirstJourney',
		'RiskManagement/Risk/test/integration/pages/RisksList',
		'RiskManagement/Risk/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskManagement/Risk') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);