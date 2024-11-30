<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign up</title>

  <link rel="stylesheet" href="styles.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.2/css/all.min.css'>
    <script>
    function afficherMatieres() {
      var niveauScolaire = document.getElementById("niveauScolaire").value;
      var mathCheckbox = document.getElementById("mathCheckbox");
      var physiqueCheckbox = document.getElementById("physiqueCheckbox");
      var mathlabel= document.getElementById("math");
      var physiquelabel = document.getElementById("physique");

      // Cacher toutes les cases à cocher
      mathCheckbox.style.display = "none";
      physiqueCheckbox.style.display = "none";
      mathlabel.style.display = "none";
      physiquelabel.style.display = "none";

      // Afficher les cases à cocher en fonction du niveau sélectionné
      if (niveauScolaire === "2-bac-sm") {
        mathCheckbox.style.display = "block";
        physiqueCheckbox.style.display = "block";
        mathlabel.style.display = "block";
        physiquelabel.style.display = "block";
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
         <input list="niveaux" id="niveauScolaire" name="niveauScolaire" placeholder="Sélectionnez le niveau" required onchange="afficherMatieres()">

    <datalist id="niveaux">
        <option value="2-bac-sm">
        <option value="2-bac-pc">
    </datalist>
        <i class='bx bxs-school' ></i>
      </div>
      
      
      <div class="form-group" style="margin-left: 10px; border-radius: 10px; padding: 10px; backdrop-filter: blur(5px); border: 2px solid #3F9893;">
    <label style=" align-self: center;">Matières</label>
    <div>
    <div class="form-group"
						style="display: flex; width: 90%; margin-left: 35px;">
        <input type="checkbox" id="mathCheckbox" name="Matieres" value="MATH" style="display:none;">
                <label for="mathCheckbox" id="math" style="display:none;margin-right: 10px;">MATH</label>
        

        <input type="checkbox" id="physiqueCheckbox" name="Matieres" value="PHYSIQUE" style="display:none;">
                <label for="physiqueCheckbox" id="physique" style="display:none;">PHYSIQUE</label>
        
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
        <p>You have an account? <a href="index.html">Log In</a></p>
      </div>
    </form>
  </div>

</body>
</html>