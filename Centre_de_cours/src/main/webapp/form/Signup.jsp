<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign up</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="icon" type="image/png" href="../assets/img/logo.png">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.2/css/all.min.css'>
  <script>
    function afficherMatieres() {
      var niveauScolaire = document.getElementById("niveauScolaire").value;
      var mathCheckbox = document.getElementById("mathCheckbox");
      var svtCheckbox = document.getElementById("svtCheckbox");
      var comptabiliteCheckbox = document.getElementById("comptabiliteCheckbox");
      var anglaisCheckbox = document.getElementById("anglaisCheckbox");
      var philosophieCheckbox = document.getElementById("philosophieCheckbox");
      var physiqueCheckbox = document.getElementById("physiqueCheckbox");
      var ingenieurCheckbox = document.getElementById("ingenieurCheckbox");
      var ecoorgaCheckbox = document.getElementById("ecoorgaCheckbox");
      var ecogeneralCheckbox = document.getElementById("ecogeneralCheckbox");
      var arabeCheckbox = document.getElementById("arabeCheckbox");
      var francaisCheckbox = document.getElementById("francaisCheckbox");
      var socioCheckbox = document.getElementById("socioCheckbox");
      var islamiqueCheckbox = document.getElementById("islamiqueCheckbox");

      var mathlabel= document.getElementById("mathl");
      var svtlabel = document.getElementById("svtl");
      var physiquelabel= document.getElementById("physl");
      var comlabel = document.getElementById("coml");
      var englabel= document.getElementById("engl");
      var philolabel = document.getElementById("philol");
      var ingl = document.getElementById("ingl");
      var ecogl = document.getElementById("ecogl");
      var ecoorgal = document.getElementById("ecoorgal");
      var arbl = document.getElementById("arbl");
      var frl = document.getElementById("frl");
      var sociol = document.getElementById("sociol");
      var islml = document.getElementById("islml");

      // Cacher toutes les cases à cocher
      mathCheckbox.style.display = "none";
      physiqueCheckbox.style.display = "none";
      svtCheckbox.style.display = "none";
      comptabiliteCheckbox.style.display = "none";
      anglaisCheckbox.style.display = "none";
      philosophieCheckbox.style.display = "none";
      ingenieurCheckbox.style.display = "none";
      ecogeneralCheckbox.style.display = "none";
      ecoorgaCheckbox.style.display = "none";
      francaisCheckbox.style.display = "none";
      socioCheckbox.style.display = "none";
      islamiqueCheckbox.style.display = "none";
      arabeCheckbox.style.display = "none";
      
      
      mathlabel.style.display = "none";
      physiquelabel.style.display = "none";
      svtlabel.style.display = "none";
      comlabel.style.display = "none";
      englabel.style.display = "none";
      philolabel.style.display = "none";
      ingl.style.display = "none";
      frl.style.display = "none";
      sociol.style.display = "none";
      islml.style.display = "none";
      ecoorgal.style.display = "none";
      ecogl.style.display = "none";
      arbl.style.display = "none";

      // Afficher les cases à cocher en fonction du niveau sélectionné
      if (niveauScolaire === "2-bac-sm-a") {
    	  mathCheckbox.style.display = "block";
          physiqueCheckbox.style.display = "block";
          anglaisCheckbox.style.display = "block";
          philosophieCheckbox.style.display = "block";
          svtCheckbox.style.display = "block";
        
          mathlabel.style.display = "block";
          physiquelabel.style.display = "block";
          englabel.style.display = "block";
          philolabel.style.display = "block";
          svtlabel.style.display = "block";
      } else if (niveauScolaire === "2-bac-sm-b") {
    	  mathCheckbox.style.display = "block";
          physiqueCheckbox.style.display = "block";
          anglaisCheckbox.style.display = "block";
          philosophieCheckbox.style.display = "block";
          ingenieurCheckbox.style.display = "block";
        
          mathlabel.style.display = "block";
          physiquelabel.style.display = "block";
          englabel.style.display = "block";
          philolabel.style.display = "block";
          ingl.style.display = "block";
    	  
      }
      else if (niveauScolaire === "2-bac-eco") {
    	  mathCheckbox.style.display = "block";
          physiqueCheckbox.style.display = "block";
          anglaisCheckbox.style.display = "block";
          philosophieCheckbox.style.display = "block";
          ecogeneralCheckbox.style.display = "block";
          ecoorgaCheckbox.style.display = "block";
        
          mathlabel.style.display = "block";
          physiquelabel.style.display = "block";
          englabel.style.display = "block";
          philolabel.style.display = "block";
          ecoorgal.style.display = "block";
          ecogl.style.display = "block";
    	  
      }
      else if (niveauScolaire === "2-bac-pc") {
    	  mathCheckbox.style.display = "block";
          physiqueCheckbox.style.display = "block";
          anglaisCheckbox.style.display = "block";
          philosophieCheckbox.style.display = "block";
          svtCheckbox.style.display = "block";
          
        
          mathlabel.style.display = "block";
          physiquelabel.style.display = "block";
          englabel.style.display = "block";
          philolabel.style.display = "block";
          svtlabel.style.display = "block";
    	  
      }
      else if (niveauScolaire === "2-bac-svt") {
    	  mathCheckbox.style.display = "block";
          physiqueCheckbox.style.display = "block";
          anglaisCheckbox.style.display = "block";
          philosophieCheckbox.style.display = "block";
          svtCheckbox.style.display = "block";
          
        
          mathlabel.style.display = "block";
          physiquelabel.style.display = "block";
          englabel.style.display = "block";
          philolabel.style.display = "block";
          svtlabel.style.display = "block";
    	  
      }
      
      else if (niveauScolaire === "1-bac-sm") {
    	  arabeCheckbox.style.display = "block";
    	  francaisCheckbox.style.display = "block";
    	  socioCheckbox.style.display = "block";
    	  islamiqueCheckbox.style.display = "block";
          
    	  arbl.style.display = "block";
    	  frl.style.display = "block";
    	  sociol.style.display = "block";
    	  islml.style.display = "block";
       
    	  
      }
      else if (niveauScolaire === "1-bac-eco") {
    	  arabeCheckbox.style.display = "block";
    	  francaisCheckbox.style.display = "block";
    	  socioCheckbox.style.display = "block";
    	  islamiqueCheckbox.style.display = "block";
          
        
    	  arbl.style.display = "block";
    	  frl.style.display = "block";
    	  sociol.style.display = "block";
    	  islml.style.display = "block";
       
    	  
      }
      else if (niveauScolaire === "1-bac-x") {
    	  arabeCheckbox.style.display = "block";
    	  francaisCheckbox.style.display = "block";
    	  socioCheckbox.style.display = "block";
    	  islamiqueCheckbox.style.display = "block";
          
        
    	  arbl.style.display = "block";
    	  frl.style.display = "block";
    	  sociol.style.display = "block";
    	  islml.style.display = "block";
       
    	  
      }
      
    
    }

    function validateForm() {
      // Ajouter toute logique de validation supplémentaire ici si nécessaire
      return true;
    }
  </script>
</head>
<body>
  <div class="wrapper">
    <form method="post" action="../Signup">
      <h1>SIGN UP</h1>
      <div class="input-box">
        <input type="text" placeholder="Nom" name="nom"  required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Prenom" name="prenom"  required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="email" placeholder="Mail" name="Email"  required>
        <i class='bx bxs-envelope' ></i>
      </div>
      <div class="input-box">
        <input type="tel" placeholder="Phone" name="Phone"  required>
        <i class='bx bxs-phone-call'></i>
      </div>
      
      <div class="input-box">
        <div class="input-box">
         <input list="niveaux" id="niveauScolaire" name="niveauScolaire" placeholder="Sélectionnez le niveau" required onchange="afficherMatieres()">

    <datalist id="niveaux">
        <option value="2-bac-sm-a">
        <option value="2-bac-sm-b">
        <option value="2-bac-pc">
        <option value="2-bac-svt">
        <option value="2-bac-eco">
        <option value="1-bac-sm">
        <option value="1-bac-x">
        <option value="1-bac-eco">
    </datalist>
        <i class='bx bxs-school' ></i>
      </div>
        
      </div>
      
      <div class="form-group" style="margin-left: 10px; border-radius: 30px; padding: 10px; backdrop-filter: blur(5px); border: 2px solid #3F9893;">
    <label style=" align-self: center;">Matières</label>
    <div class="form-group" style="display: table; width: 100%;">
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="mathCheckbox" name="Matieres" value="MATH" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="mathCheckbox" id="mathl" style="display:none;">MATH</label>
        </div>

        <div style="display: table-cell;">
            <input type="checkbox" id="physiqueCheckbox" name="Matieres" value="PHYSIQUE" style="display:none;">
        </div>
        <div style="display: table-cell;">
            <label for="physiqueCheckbox" id="physl" style="display:none;">PHYSIQUE</label>
        </div>
    </div>

    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="svtCheckbox" name="Matieres" value="SVT" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="svtCheckbox" id="svtl" style="display:none;">SVT</label>
        </div>

        <div style="display: table-cell;">
            <input type="checkbox" id="comptabiliteCheckbox" name="Matieres" value="COMPTABILITE" style="display:none;">
        </div>
        <div style="display: table-cell;">
            <label for="comptabiliteCheckbox" id="coml" style="display:none;">COMPTABILITE</label>
        </div>
    </div>

    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="philosophieCheckbox" name="Matieres" value="PHILOSOPHIE" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="philosophieCheckbox" id="philol" style="display:none;">PHILOSOPHIE</label>
        </div>

        <div style="display: table-cell;">
            <input type="checkbox" id="anglaisCheckbox" name="Matieres" value="ANGLAIS" style="display:none;">
        </div>
        <div style="display: table-cell;">
            <label for="anglaisCheckbox" id="engl" style="display:none;">ANGLAIS</label>
        </div>
    </div>
    
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="ingenieurCheckbox" name="Matieres" value="INGENIEUR" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="ingenieurCheckbox" id="ingl" style="display:none;">SC.INGENIEUR</label>
        </div>

        <!-- <div style="display: table-cell;">
            <input type="checkbox" id="anglaisCheckbox" name="Matieres" value="ANGLAIS" style="display:none;">
        </div>
        <div style="display: table-cell;">
            <label for="anglaisCheckbox" id="engl" style="display:none;">ANGLAIS</label>
        </div> -->
    </div>
    
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="ecogeneralCheckbox" name="Matieres" value="ECOGENERAL" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="ecogeneralCheckbox" id="ecogl" style="display:none;">ECO.GENERAL</label>
        </div>
    </div>
    
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="ecoorgaCheckbox" name="Matieres" value="ECOORGANISATION" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="ecoorgaCheckbox" id="ecoorgal" style="display:none;">ECO.ORGANISATION</label>
        </div>
    </div>
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="arabeCheckbox" name="Matieres" value="ARABE" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="arabeCheckbox" id="arbl" style="display:none;">ARABE</label>
        </div>
    </div>
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="francaisCheckbox" name="Matieres" value="FRANCAIS" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="francaisCheckbox" id="frl" style="display:none;">FRANCAIS</label>
        </div>
    </div>
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="socioCheckbox" name="Matieres" value="SOCIOLOGIE" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="socioCheckbox" id="sociol" style="display:none;">SOCIOLOGIE</label>
        </div>
    </div>
    <div style="display: table-row;">
        <div style="display: table-cell;">
            <input type="checkbox" id="islamiqueCheckbox" name="Matieres" value="ISLAMIQUE" style="display:none;">
        </div>
        <div style="display: table-cell; margin-right: 10px;">
            <label for="islamiqueCheckbox" id="islml" style="display:none;">ISLAMIQUE</label>
        </div>
    </div>
</div>
</div>
      
      <div class="input-box">
        <input type="password" placeholder="Password" name="Password" required>
        <i class='bx bxs-lock-alt' ></i>
      </div>
      <div class="remember-forgot">
        <label><input type="checkbox">Remember Me</label>
        <a href="#">Forgot Password</a>
      </div>
      <button type="submit" class="btn">Sign Up</button>
      <div class="register-link">
        <p>You have an account? <a href="Login.jsp">Log In</a></p>
      </div>
    </form>
  </div>
</body>
</html>