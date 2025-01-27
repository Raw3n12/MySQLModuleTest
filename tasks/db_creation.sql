/*
Adatbázis létrehozása feladat

Készíts adatbázis-táblákat a feladat leírása alapján!
(Magát az adatbázist nem kell létrehoznod.)

Amit be kell adnod:
    - a táblák létrehozásának MySQL utasítása
    - a táblák mezőinek létrehozásához és beállításához szükséges MySQL utasítások

Az utasításokat jelen fájl tartalmazza!

A bónusz feladat megoldása nem kötelező.

Nem futtatható (azaz szintaktikai hibás) SQL utasításokért nem jár pont.
A feladatot részben teljesítő megoldásokért részpontszám jár.
A bónusz feladatnál csak a teljesen helyes megoldásért jár pont.

A feladat leírása törölhető.

Jó munkát!
*/

/*
Adatbázis-táblák létrehozása (20 pont)

Az általad létrehozott adatbázist egy üzenetküldő alkalmazáshoz szeretnénk használni.
Az alkalmazásban a felhasználók regisztrálás után tudnak üzenetet küldeni szintén regisztrált felhasználóknak,
valamint a kapott üzenetekre válaszolhatnak.
Nincs lehetőség több címzett megadására - azaz egy üzenetet csak egy felhasználó részére lehet küldeni.

Az adatbázisnak képesnek kell lennie a következő adatok tárolására:
    1. regisztrált felhasználók adatai
        - kötelező adatok: név, email-cím, jelszó, aktív felhasználó-e, a regisztrálás időpontja

        Create database IF NOT EXIST newdatabase
        Use database_newdatabase
        CREATE TABLE IF NOT EXIST registered_users (
        id INT PRIMARY KEY,
        user_name VARCHAR(130)NOT NULL DEFAULT ‘anonymous’,
        user_email VARCHAR(130)NOT NULL DEFAULT ‘anonymous@anonymus.com’,
        gender_type ENUM('male','female')
        user_active BOOL,
        user_regdate DATETIME NOT NULL DEFAULT 1900-01-01 00:00:01);

        SQL databaseben:
        CREATE TABLE `newdatabase`.`registered users` (`id` INT NOT NULL AUTO_INCREMENT ,
        `user_name` VARCHAR(130) NOT NULL , `user_email` VARCHAR(130) NOT NULL , `gender_type` ENUM(male,female) NOT NULL ,
        `user_active` BOOLEAN NOT NULL , `user_regdate` DATETIME NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;


    2. a regisztrált felhasználók által egymásnak küldött üzenetek adatai
        - kötelező adatok: küldő, címzett, üzenet szövege, az üzenet küldésének időpontja,
          továbbá ha az üzenet egy korábban kapottra válasz, akkor hivatkozás a megválaszolt üzenetre

          Create database IF NOT EXIST newmaildatabase
          Use database_newmaildatabase
          CREATE TABLE IF NOT EXIST registered_usersmails (
          mail_id INT PRIMARY KEY,
          user_name_from VARCHAR(100),
          user_name_to VARCHAR(100),
          usermail_text TEXT;
          usermail_oldtext TEXT;
          usermail_date DATETIME NOT NULL DEFAULT 1900-01-01 00:00:01,
          FOREIGN KEY (user_name_from) REFERENCES registered_users(user_name),
          FOREIGN KEY (user_name_to) REFERENCES registered_users(user_name),
          FOREIGN KEY (usermail_text) REFERENCES registered_users(usermail_oldtext),





Kritériumok az adatbázissal kapcsolatban:
    - legalább kettő, legfeljebb négy táblát tartalmazzon
    - legyen legalább egy kapcsolat a létrehozott táblák között (idegen kulccsal)
      (egy tábla saját magával is kapcsolódhat)
    - a fent leírt adatokon kívül más adatokat is tárolhat, de egy táblán legfeljebb 8 mező lehet
    - az adatbázis, a táblák és a mezők elnevezése rajtad áll, azonban használj angol megnevezéseket, méghozzá következetesen
      (ha az egyik táblában camel-case szerinti mező-neveket adtál, akkor a másik táblában is tégy úgy)

*/


-- ---------------------------------------------------------------------------------------------------------------------

/*
Bónusz feladat (5 pont)

Adj hozzá adatokat mindegyik táblához!
(Az adatoknak nem kell valósnak lenniük. Egy felhasználói email-cím lehet például: 'valami@valami.va')
INSERT INTO registered_usersmails VALUES (1,Sárkány,Királylány,Megeszlek,1432-10-11 22:10:12)
INSERT INTO registered_users VALUES (1,Sárkány,sarkany@kirallany.org,male,1,1432-10-9 22:10:12)

*/
