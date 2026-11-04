package antiSomnolence {
    private import antiSomnolence::parts::*;

    package sequences {
        occurrence configurerSeuils {
            part operateur : OperateurFlotte;
            part systeme : SystemeAntiSomnolence;
            part menu : Menu;
            part dialogueReglage : DialogueReglage;
            part reglage : Reglage;

            message demanderConfiguration from operateur to systeme;
            message afficherMenu from systeme to menu;
            message selectionnerItem from menu to systeme;
            message afficherReglage from systeme to dialogueReglage;
            message transmettreReglage from dialogueReglage to systeme;
            message appliquerReglage from systeme to reglage;
            message confirmerReglage from reglage to systeme;
            message notifierOperateur from systeme to operateur;
        }
    }
}
