package antiSomnolence {
    private import ScalarValues::Boolean;

    package parts {
        part def Conducteur;
        part def OperateurFlotte;
        part def SystemeAntiSomnolence;
        part def ReseauElectriqueVehicule;
        part def BusCAN;
        part def Siege;
        part def CapteurIR;
    }

    private import antiSomnolence::parts::*;

    part def Contexte {
        part conducteur : Conducteur;
        part operateur : OperateurFlotte;
        part systeme : SystemeAntiSomnolence;
        part reseauElectrique : ReseauElectriqueVehicule;
        part busCAN : BusCAN;
        part siege : Siege;
        part capteurIR : CapteurIR;

        flow surveille from systeme to conducteur;
        flow alerte from systeme to conducteur;
        flow alimente from reseauElectrique to systeme;
        flow signal from capteurIR to systeme;
        flow vibre from systeme to siege;
        flow communique from systeme to busCAN;
        flow configure from operateur to systeme;
    }

    package useCases {
        private import antiSomnolence::parts::*;

        actor conducteur : Conducteur;
        actor operateur : OperateurFlotte;

        use case surveillerVigilance { ref actor conducteur; }
        use case declencherAlerte { ref actor conducteur; }
        use case enregistrerEvenements { ref actor operateur; }
        use case configurerSeuils { ref actor operateur; }
        use case consulterDonnees { ref actor operateur; }
    }
}