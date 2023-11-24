package com.example.allezhop.Services

import com.example.allezhop.DAO.ReservationDAO
import com.example.allezhop.Modèles.Reservation
import com.example.allezhop.Modèles.Trajet
import org.springframework.stereotype.Service

@Service
class ReservationService(val dao: ReservationDAO) {

    fun chercherTous(): List<Reservation> = dao.chercherTous()
    fun chercherParCode(code: String): List<Reservation>? = dao.chercherParCode(code.toInt())

    fun ajouter(reservation: Reservation) = dao.ajouter(reservation)


    fun supprimer(reservation: Reservation) {
        dao.supprimer(reservation)
    }


}