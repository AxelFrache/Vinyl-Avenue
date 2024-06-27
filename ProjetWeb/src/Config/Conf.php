<?php

namespace App\eCommerce\Config;

class Conf
{
    static private array $databases = array(
        // Le nom d'hôte est 'db' comme défini dans docker-compose.yml
        'hostname' => 'db',
        // Nom de la base de données
        'database' => 'projetwebdb',
        // Nom d'utilisateur pour la base de données
        'login' => 'user',
        // Mot de passe pour la base de données
        'password' => 'password'
    );

    static public function getLogin(): string
    {
        // L'attribut statique $databases s'obtient avec la syntaxe static::$databases
        // au lieu de $this->databases pour un attribut non statique
        return static::$databases['login'];
    }

    static public function getHostname(): string
    {
        return static::$databases['hostname'];
    }

    static public function getDatabase(): string
    {
        return static::$databases['database'];
    }

    static public function getPassword(): string
    {
        return static::$databases['password'];
    }
}

?>
