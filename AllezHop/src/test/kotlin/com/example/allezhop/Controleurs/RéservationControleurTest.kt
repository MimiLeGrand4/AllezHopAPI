package com.example.allezhop.Controleurs

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class RéservationControleurTest {
    @Test
    //GetMapping("/réservations/{code}")
    fun `Étant donné la réservation dont le code est 1 lorsqu'on effectue une requête GET de recherche par code alors on obtient un JSON qui contient une réservation dont le code est 1 et un code de retour 200`() {

    }

    @Test
    //GetMapping("/réservations/{code}")
    fun `Étant donné la réservation dont le code est 0 et qui n'est pas inscrit au service, lorsqu'on effectue une requête GET de recherche par code, alors on obtient un code de retour 404 et le message "la réservation 0 n'est pas inscrit au service"`() {

    }

    @Test
    //PostMapping("/réservations")
    fun `Étant donnée la réservation dont le code est 1 qui existe déjà lorsqu'on effectue une requête POST pour l'ajouter alors on obtient un code de retour 409`() {

    }

    @Test
    //PostMapping("/réservations")
    fun `Étant donnée la réservation dont le code est 78 et qui n'est pas inscrit au service lorsqu'on effectue une requête POST pour l'ajouter, alors on obtient un code de retour 200` () {

    }

    @Test
    //@PutMapping("/réservations/edit/{code}")
    fun `Étant donnée la réservation dont le code est 2 et qui est inscrit au service et dont le code d'utilisateur est 1 lorsqu'on effectue une requête PUT pour modifier le code d'utilisateur pour « 2 », alors on obtient un JSON qui contient une réservation dont le code est 2 et le code d'utilisateur est « 2 » ainsi qu'un code de retour 200` () {

    }

    @Test
    //@PutMapping("/réservations/edit/{code}")
    fun `Étant donnée la réservation dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête PUT, alors on obtient un JSON qui contient une réservation dont le code est 78 ainsi qu'un code de retour 201` () {

    }

    @Test
    //@DeleteMapping("/réservations/delete/{code}")
    fun `Étant donnée la réservation dont le code est 2 et qui est inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 204` () {

    }

    @Test
    //@DeleteMapping("/réservations/delete/{code}")
    fun `Étant donnée la réservation dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 404` () {

    }
}