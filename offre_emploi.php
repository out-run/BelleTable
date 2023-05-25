<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Offres d'emploi</title>
  <link rel="stylesheet" href="offre_emploi.css">
		<link rel="shortcut icon" type="image/png" href="belle-table_logo2.png">

  
</head>
<body>
<img src="fondecranBELLETABLE.jpg" class="background_imageOFD" alt="">
    <?php include("MenuPage.php")?>



<main>
    <div class="box_1" style="padding: 40px;">

    <div class="offre-demplois_h1">
    <h3 class="PRESENTATION_h3" id="PRESENTATION_h32" >NOUS RECRUTONS</h3><div id="offres"></div>
        <hr class="PRESENTATION_HR1">
    </div>
    


<div class="section" >
<h2 class="section3_h2">Spécialiste en marketing numérique</h2>
<H3>Compétences requises :</H3>
  <div class="div_p">
    <p> • Expérience en SEO et SEM.</p>
    <p> • Capacité à planifier et exécuter des campagnes publicitaires en ligne.</p>
    <p> • Compétences en analyse de données et en marketing par courriel.</p>
</div>
<a class="section_button"href="#">Postuler</a>
</div>

<hr class="hr_cpt">

<div class="section"  >
<h2 class="section3_h2" >Manutentionaire</h2>
<h3> Compétences requises :</h3>
<div class="div_p">
    <p> • Déplacer des charges lourdes. (15kg)</p>
    <p> • Etre disopnible cértains week-ends.</p>
    <p> • Travailler en équipes.</p>
</div>
<a class="section_button" href="#">Postuler</a>
</div>

<hr class="hr_cpt">

<div class="section">
<h2 class="section3_h2" >Développeur Web</h2>
<h3>Compétences requises :</h3>
  <div class="div_p">
    <p> • Expérience en HTML, CSS, JavaScript.</p>
    <p> • Connaissance de React et Vue.js.</p>
    <p> • Capacité à travailler en équipe.</p>
</div>
<a class="section_button"href="#">Postuler</a>
</div>

<hr class="hr_cpt">

<div class="section" >
<h2 class="section3_h2">Designer Graphique</h2>
<H3>Compétences requises :</h3>
  <div class="div_p">
    <p> • Maîtrise de Photoshop et Illustrator.</p>
    <p> • Connaissance des tendances de conception actuelles.</p>
    <p> • Capacité à travailler sous pression.</p>
</div>
<a class="section_button"href="#">Postuler</a>
</div>
vous etes développeur ou admin reseau ? Allez<a style="text-decoration:underline; color:#707070;" href="PatrimoineInformatique.php#patrimoineinfo">voir notre patrimoine informatique</a>.

      </div>
</div>











</div>


  



</main>
<style>



.background_imageOFD {
  background-position: bottom;
    margin-top: 0px;
    width: 100%;
    height: 35vh;
    object-fit: cover;
}

.box_1 {
  width: auto;
  background-color: #e2e2e2;
  margin-left: 35vh;
	margin-right: 35vh;
  margin-top: 60px;
  margin-bottom: 10vh;
  padding: 5px;
  transition: transform 0.4s ease;
  font-family: sans-serif;
  font-size: large;
  color: #202124;
}

.offre-demplois_div{ 
  display: inline-flex;

}

.offre-demplois_h1 {  
  margin-bottom: 10vh;
 }

.section3_h2{
  text-decoration: underline;
 }

.section{

    
    max-width: 100vh;
    padding:5vh;
    padding-bottom: 5vh; 
 }

.div_p{ 
  padding-bottom: 2vh;
  padding-top: 2vh;

 }

.section_button{ 
  background-color: #34238e;
  display: inline-flex;
 }

.section_button:hover{ 
  background-color: #b4b4b4;
  display: inline-flex;
 }

.hr_cpt{
  width: auto;
  background-color: #3f3f3f;
  border: white;
  border-radius: 5px;
  padding: 1px;
}



</style>

<footer>
<?php include("footer.php");?>
</footer>
