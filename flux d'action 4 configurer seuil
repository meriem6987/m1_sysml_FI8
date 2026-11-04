package antiSomnolence {
    private import ScalarValues::Boolean;

    action configurerSeuils {
        attribute demandeConfiguration : Boolean;
        attribute annulation : Boolean;
        attribute autreParametre : Boolean;
        attribute parametreSelectionne : Boolean;

        action afficherMenuConfiguration;
        action afficherReglageSeuil;
        action validerSeuil;

        merge merge0;
        decide decide0;

        first start;
        succession start if demandeConfiguration then merge0;
        then afficherMenuConfiguration;
        then decide decide0;
            if annulation then done;
            if autreParametre 
                then afficherReglageSeuil;
        succession afficherReglageSeuil if parametreSelectionne then validerSeuil;
        then merge0;
    }
}
