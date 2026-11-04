package antiSomnolence {
    private import ScalarValues::Boolean;

    action declencherAlerte {
        attribute boutonAppuye : Boolean;
        attribute seuilAtteint : Boolean;
        attribute annulation : Boolean;
        attribute aggravation : Boolean;
        attribute vibrationConfirmee : Boolean;

        action evaluerVigilance;
        action declencherPreAlerte;
        action declencherVibrationForte;

        merge merge0;
        decide decide0;

        first start;
        succession start if seuilAtteint then merge0;
        then evaluerVigilance;
        then decide decide0;
            if annulation then done;
            if aggravation 
                then declencherPreAlerte;
        succession declencherPreAlerte if vibrationConfirmee then declencherVibrationForte;
        then merge0;
    }
}
