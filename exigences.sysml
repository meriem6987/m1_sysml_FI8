package antiSomnolence {
    package requirements {
        requirement specificationsSysteme {
            doc /* le système répond aux catégories d'exigences listées ci-dessous */
        }
        requirement fonctions specializes specificationsSysteme {
            doc /* le système doit comprendre les fonctions listées ci-dessous */
        }
        requirement interactionsMaterielle specializes specificationsSysteme {
            doc /* le système doit pouvoir disposer des interactions matérielles listées */
        }
        requirement contraintes specializes specificationsSysteme {
            doc /* le système doit respecter les contraintes ci-dessous */
        }
        requirement surveillanceVigilance specializes fonctions {
            doc /* le système doit surveiller en continu l'état de vigilance du conducteur */
        }
        requirement detectionSomnolence specializes fonctions {
            doc /* le système doit détecter un état de somnolence via le PERCLOS (seuil 0.15) */
        }
        requirement alerteHaptique specializes fonctions {
            doc /* le système doit déclencher une alerte haptique via le siège */
        }
        requirement alerteLumineuse specializes fonctions {
            doc /* le système doit déclencher une alerte lumineuse */
        }
        requirement enregistrementEvenements specializes fonctions {
            doc /* le système doit enregistrer les événements de somnolence détectés */
        }
        requirement compatibiliteElectrique specializes interactionsMaterielle {
            doc /* le système doit être compatible avec le réseau électrique 12V/24V du véhicule */
        }
        requirement interfaceCAN specializes interactionsMaterielle {
            doc /* le système doit communiquer via le bus CAN du véhicule */
        }
        requirement tempsReponse specializes contraintes {
            doc /* le temps de réponse entre détection et alerte doit être inférieur à 500ms */
        }
        requirement temperatureFonctionnement specializes contraintes {
            doc /* le système doit fonctionner entre -20°C et +85°C */
        }
    }
}