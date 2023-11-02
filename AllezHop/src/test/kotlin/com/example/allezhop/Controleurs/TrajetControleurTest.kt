package com.example.allezhop.Controleurs

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class TrajetControleurTest {

    @Test
    //GetMapping("/trajet/{code}")
    fun `Étant donné le trajet dont le code est 1 lorsqu'on effectue une requête GET de recherche par code alors on obtient un JSON qui contient un trajet dont le code est 1 et un code de retour 200`() {

    }

    @Test
    //GetMapping("/trajet/{code}")
    fun `Étant donné le trajet dont le code est 0 et qui n'est pas inscrit au service, lorsqu'on effectue une requête GET de recherche par code, alors on obtient un code de retour 404 et le message "le trajet 0 n'est pas inscrit au service"`() {

    }

    @Test
    //PostMapping("/trajets")
    fun `Étant donnée le trajet dont le code est 1 qui existe déjà lorsqu'on effectue une requête POST pour l'ajouter alors on obtient un code de retour 409`() {

    }

    @Test
    //PostMapping("/trajets")
    fun `Étant donnée le trajet dont le code est 78 et qui n'est pas inscrit au service lorsqu'on effectue une requête POST pour l'ajouter, alors on obtient un code de retour 200` () {

    }

    @Test
    //@PutMapping("/trajets/edit/{code}")
    fun `Étant donnée le trajet dont le code est 2 et qui est inscrit au service et dont le conducteur est John Doe lorsqu'on effectue une requête PUT pour modifier le conducteur pour « Jane Doe », alors on obtient un JSON qui contient un trajet dont le code est 2 et le conducteur est « Jane Doe » ainsi qu'un code de retour 200` () {

    }

    @Test
    //@PutMapping("/trajets/edit/{code}")
    fun `Étant donnée le trajet dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête PUT, alors on obtient un JSON qui contient un trajet dont le code est 2 ainsi qu'un code de retour 201` () {

    }

    @Test
    //@DeleteMapping("/trajets/delete/{code}")
    fun `Étant donnée le trajet dont le code est 2 et qui est inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 204` () {

    }

    @Test
    //@DeleteMapping("/trajets/delete/{code}")
    fun `Étant donnée le trajet dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 404` () {

    }



}