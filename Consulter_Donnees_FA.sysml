package tbi {
    private import ScalarValues::Boolean;

    action Consulter_Donnees_Constructeur {
        attribute boutonConsulter : Boolean;
        attribute accesAutorise : Boolean;
        attribute annulation : Boolean;

        action Demander_Acces_Donnees;
        action Verifier_Autorisation;
        action Consulter_Donnees;

        decide decisionAcces;

        first start;

        succession start
            if boutonConsulter
            then Demander_Acces_Donnees;

        then Verifier_Autorisation;

        then decide decisionAcces;

            if accesAutorise
                then Consulter_Donnees;


            if not accesAutorise
                then done;


        if annulation
            then done;

        succession Consulter_Donnees if annulation then done; 
    }
}