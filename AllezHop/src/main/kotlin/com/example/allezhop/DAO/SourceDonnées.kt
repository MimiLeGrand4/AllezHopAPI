package crosemont.tdi.g66.restaurantapirest.DAO

import com.example.allezhop.Modèles.Utilisateur

import org.springframework.stereotype.Component

@Component
class SourceDonnées {
    companion object {
        val utilisateurs = mutableListOf(
                Utilisateur(1),
                Utilisateur(2) ,
                Utilisateur(3),
        )

    }
}