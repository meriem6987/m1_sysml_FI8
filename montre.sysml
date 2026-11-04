package Systeme_Montre {

    // Définition du système principal
    part def Systeme_Montre {
        // Sous-systèmes
        part capteurCoeur : CapteurCardiaque;
        part capteurTemp  :  Capteurtemp;
        part alerteHaptique : SystemeHaptique;
        part alerteSonore : ReveilSonore;
    }

    part def CapteurCardiaque {
        attribute BPM : Real ; // Bpm
    }

    part def Capteurtemp {
        attribute C : Real ; // °C
    }

    part def SystemeHaptique {
        attribute frequencepique : Real; // Hz
    }

    part def ReveilSonore {
        attribute intensite : Real; // dB
    }

    // Instanciation
    part monSysteme : Systeme_Montre;
}