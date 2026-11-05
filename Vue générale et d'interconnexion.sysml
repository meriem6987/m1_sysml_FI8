package antiSomnolence {
    private import ScalarValues::Boolean;

    package parts {
        part def Conducteur;
        part def OperateurFlotte;
        part def SystemeAntiSomnolence;
        part def ReseauElectriqueVehicule;
        part def BusCAN;
        part def SiegeHaptique;
        part def CapteurIR;
        part def UniteTraitement;
    }

    private import antiSomnolence::parts::*;

    part def ContexteGlobal {
        part conducteur : Conducteur;
        part operateur : OperateurFlotte;
        part systeme : SystemeAntiSomnolence;
        part reseauElectrique : ReseauElectriqueVehicule;
        part busCAN : BusCAN;
        part siege : SiegeHaptique;
        part capteurIR : CapteurIR;
        part calcul : UniteTraitement;

        // Interconnexions et flux matériels
        flow fluxAlimentation from reseauElectrique to systeme;
        flow fluxVideo from capteurIR to calcul;
        flow fluxDonneesBus from busCAN to systeme;
        flow fluxAlerteHaptique from systeme to siege;
        flow contactConducteur from systeme to conducteur;
        flow configurationOperateur from operateur to systeme;
    }
}
