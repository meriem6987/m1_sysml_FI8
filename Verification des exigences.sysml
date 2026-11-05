package antiSomnolence {
    private import ScalarValues::Boolean;

    package requirements {
        
        // Catégories principales
        requirement def ExigenceFonctionnelle {
            doc /* Le système répond aux catégories d'exigences listées ci-dessous */;
        }
        
        // 1. Fonctions / Surveillance
        requirement surveillanceVigilance {
            doc /* Le système doit surveiller en continu l'état de vigilance du conducteur */;
        }
        
        requirement detectionSomnolence {
            doc /* Le système doit détecter un état de somnolence via le PERCLOS (seuil 0.15) */;
        }

        requirement alerteHaptique {
            doc /* Le système doit déclencher une alerte haptique via le siège */;
        }

        requirement alerteLumineuse {
            doc /* Le système doit déclencher une alerte lumineuse */;
        }

        requirement enregistrementEvenements {
            doc /* Le système doit enregistrer les événements de somnolence détectés */;
        }

        // 2. Interactions matérielles
        requirement interfaceCAN {
            doc /* Le système doit communiquer via le bus CAN du véhicule */;
        }

        // 3. Contraintes
        requirement compatibiliteElectrique {
            doc /* Le système doit être compatible avec le réseau électrique 12V/24V du véhicule */;
        }

        requirement tempsReponse {
            doc /* Le temps de réponse entre détection et alerte doit être inférieur à 500ms */;
        }

        requirement temperatureFonctionnement {
            doc /* Le système doit fonctionner entre -20°C et +65°C */;
        }
    }

    package verifications {
        private import antiSomnolence::requirements::*;

        // Vérification du respect des exigences clés par les composants et actions
        verify requirement surveillanceVigilance by useCases::surveillerVigilance;
        verify requirement detectionSomnolence by useCases::surveillerVigilance;
        verify requirement alerteHaptique by useCases::declencherAlerte;
        verify requirement tempsReponse by sequences::declencherAlerte;
    }
}
