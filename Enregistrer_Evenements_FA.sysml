package tbi {
    private import ScalarValues::Boolean;

    action Enregistrer_Evenements {
        attribute boutonAppuye : Boolean;
        attribute annulation: Boolean;
        attribute autreItem : Boolean;
        action Enregistrer_Evenements;
        decide decide0;

        first start;
        succession start if boutonAppuye then Enregistrer_Evenements;
        then decide decide0;
            if annulation then done;
            if autreItem
                then Enregistrer_Evenements;
    }
}