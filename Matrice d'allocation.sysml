package antiSomnolence {
    private import antiSomnolence::parts::*;
    private import antiSomnolence::useCases::*;

    package allocations {
        // Matrice d'allocation entre les actions / use cases et les composants matériels
        allocate surveillerVigilance to CapteurIR;
        allocate surveillerVigilance to UniteTraitement;
        allocate declencherAlerte to SiegeHaptique;
        allocate configurerSeuils to UniteTraitement;
        allocate enregistrerEvenements to UniteTraitement;
        allocate consulterDonnees to UniteTraitement;
    }
}
