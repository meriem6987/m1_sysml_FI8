package supportHaptique {

    private import ScalarValues::Boolean;
    package parts {
        part def Conducteur;
        part def GestionnaireDeFlotte;
        part def ModuleDeDetection;
        part def SiegeHaptique;
        part def ActionneurVibrant;
        part def ModuleCommunication;
    }

    private import siegeHaptique::parts::*;
    part def Contexte {
        part conducteur : Conducteur;
        part gestionnaire : GestionnaireDeFlotte;
        part moduleDetection : ModuleDeDetection;
        part siegeHaptique : SiegeHaptique;
        part actionneur : ActionneurVibrant;
        part moduleCom : ModuleCommunication;

        flow detecte from moduleDetection to conducteur;
        flow vibre from actionneur to conducteur;
        flow transmet from siegeHaptique to gestionnaire;
    }

    package useCases {
        private import siegeHaptique::parts::*;

        actor conducteur : Conducteur;
        actor gestionnaireDeFlotte : GestionnaireDeFlotte;
        actor moduleDeDetection : ModuleDeDetection;

        use case declencherVibration {
            ref actor moduleDeDetection;
        }

        use case recevoirAlerteVibratoire {
            ref actor conducteur;
            include declencherVibration;
        }

        use case reglerIntensite {
            ref actor conducteur;
        }

        use case rechargerSupport {
            ref actor conducteur;
        }

        use case appairerAuBoitier;

        use case poserOuRetirerSupport {
            ref actor gestionnaireDeFlotte;
            include appairerAuBoitier;
        }

        use case consulterEtatSupport {
            ref actor gestionnaireDeFlotte;
        }
    }
}
