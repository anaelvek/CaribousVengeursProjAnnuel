<?php
 
   if((isset($_POST['submit']))&&(isset($_POST['nom']))&&(isset($_POST['prenom']))&&(isset($_POST['civilite']))&&(isset($_POST['naissance']))&&(isset($_POST['pays']))&&(isset($_POST['mail']))&&(isset($_POST['tel']))&&(isset($_POST['objet']))&&(isset($_POST['message']))) {
     /* récupérer les données du formulaire en utilisant
        la valeur des attributs name comme clé
       */
       $nom = $_POST['nom'];
       $prenom = $_POST['prenom'];
       $civilite = $_POST['civilite'];
       $naissance = $_POST['naissance'];
       $pays = $_POST['pays'];
       $mail = $_POST['mail'];
       $tel = $_POST['tel'];
       $objet = $_POST['objet'];
       $message = $_POST['message'];
       
      $mail_destinataire = 'anael.vekemans@gmail.com';
      mail($mail_destinataire,$objet,$message);
     exit;
  } else {
    echo "Le mail n'a pas pu être envoyé.";
  }
?>
