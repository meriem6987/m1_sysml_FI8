package SystemeAntiSomnolence {

    // Définition du système principal
    part def SystemeDetectionSomnolence {
        // Sous-systèmes
        part capteurIR : CapteurInfrarouge;
        part uniteTraitement : UniteTraitement;
        part alerteHaptique : SiegeHaptique;
        part alerteLumineuse : FlashLumineux;
    }

    part def CapteurInfrarouge {
        attribute longueurOnde : Real = 850.0; // nm
    }

    part def UniteTraitement {
        attribute seuilPERCLOS : Real = 0.15;
    }

    part def SiegeHaptique {
        attribute frequenceVibration : Real; // Hz
    }

    part def FlashLumineux {
        attribute intensite : Real; // lux
    }

    // Instanciation
    part monSysteme : SystemeDetectionSomnolence;
}