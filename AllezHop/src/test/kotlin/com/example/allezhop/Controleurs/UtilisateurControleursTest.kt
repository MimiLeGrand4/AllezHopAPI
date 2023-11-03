package com.example.allezhop.Controleurs

import org.junit.jupiter.api.Test
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class UtilisateurControleursTest {
    @Test
    //GetMapping("/utilisateurs/{code}")
    fun `Étant donné l'utilisateur dont le code est 1 lorsqu'on effectue une requête GET de recherche par code alors on obtient un JSON qui contient un utilisateur dont le code est 1 et un code de retour 200`() {

    }

    @Test
    //GetMapping("/utilisateurs/{code}")
    fun `Étant donné l'utilisateur dont le code est 0 et qui n'est pas inscrit au service, lorsqu'on effectue une requête GET de recherche par code, alors on obtient un code de retour 404 et le message "l'utilisateur 0 n'est pas inscrit au service"`() {

    }

    @Test
    //PostMapping("/utilisateurs")
    fun `Étant donnée l'utilisateur dont le code est 1 qui existe déjà lorsqu'on effectue une requête POST pour l'ajouter alors on obtient un code de retour 409`() {

    }

    @Test
    //PostMapping("/utilisateurs")
    fun `Étant donnée l'utilisateur dont le code est 78 et qui n'est pas inscrit au service lorsqu'on effectue une requête POST pour l'ajouter, alors on obtient un code de retour 200` () {

    }

    @Test
    //@PutMapping("/utilisateurs/edit/{code}")
    fun `Étant donnée l'utilisateur dont le code est 2 et qui est inscrit au service et dont le nom est John lorsqu'on effectue une requête PUT pour modifier le conducteur pour « Jane », alors on obtient un JSON qui contient un utilisateur dont le code est 2 et le nom est « Jane » ainsi qu'un code de retour 200` () {

    }

    @Test
    //@PutMapping("/utilisateurs/edit/{code}")
    fun `Étant donnée l'utilisateur dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête PUT, alors on obtient un JSON qui contient un utilisateur dont le code est 78 ainsi qu'un code de retour 201` () {

    }

    @Test
    //@DeleteMapping("/utilisateurs/delete/{code}")
    fun `Étant donnée l'utilisateur dont le code est 2 et qui est inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 204` () {

    }

    @Test
    //@DeleteMapping("/utilisateurs/delete/{code}")
    fun `Étant donnée l'utilisateur dont le code est 78 et qui n'est pas inscrit au service, lorsqu'on effectue une requête DELETE, alors on obtient un code de retour 404` () {

    }
}