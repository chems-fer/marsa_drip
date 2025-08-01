<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Marsa Drip</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 0; background: #fff; color: #222; }
        header { background-color: #000; color: #fff; padding: 20px; text-align: center; }
        h1 { margin: 0; font-size: 2em; }
        .banner { background: url('https://via.placeholder.com/1200x400') no-repeat center center; background-size: cover; height: 300px; }
        .products { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 15px; padding: 20px; }
        .product { border: 1px solid #ddd; padding: 10px; text-align: center; }
        .product img { width: 100%; height: auto; }
        .form-section { padding: 20px; background-color: #f9f9f9; }
        form { max-width: 500px; margin: auto; }
        label { display: block; margin-top: 10px; }
        input, textarea { width: 100%; padding: 8px; margin-top: 5px; }
        button { margin-top: 15px; padding: 10px 20px; background-color: black; color: white; border: none; cursor: pointer; }
        footer { background-color: #000; color: #fff; text-align: center; padding: 15px; }
    </style>
</head>
<body>

<header>
    <h1>Marsa Drip</h1>
    <p>Inspiration Courir.com – Paiement en espèces / Livraison en Tunisie 🇹🇳</p>
</header>

<div class="banner"></div>

<section class="products">
    <div class="product">
        <img src="https://via.placeholder.com/200x200" alt="Produit 1">
        <h3>Produit 1</h3>
        <p>120 DT</p>
    </div>
    <div class="product">
        <img src="https://via.placeholder.com/200x200" alt="Produit 2">
        <h3>Produit 2</h3>
        <p>150 DT</p>
    </div>
    <div class="product">
        <img src="https://via.placeholder.com/200x200" alt="Produit 3">
        <h3>Produit 3</h3>
        <p>99 DT</p>
    </div>
</section>

<section class="form-section">
    <h2>Commander maintenant</h2>
    <form action="mailto:tonemail@exemple.com" method="post" enctype="text/plain">
        <label for="nom">Nom et prénom :</label>
        <input type="text" id="nom" name="Nom" required>

        <label for="adresse">Adresse complète :</label>
        <textarea id="adresse" name="Adresse" rows="2" required></textarea>

        <label for="tel">Numéro de téléphone (+216) :</label>
        <input type="tel" id="tel" name="Téléphone" pattern="\\+216[0-9\\s]+" required>

        <label for="produit">Produit souhaité :</label>
        <input type="text" id="produit" name="Produit" required>

        <label for="taille">Taille :</label>
        <input type="text" id="taille" name="Taille">

        <button type="submit">Envoyer la commande</button>
    </form>
</section>

<footer>
    &copy; 2025 Marsa Drip – Tous droits réservés
</footer>

</body>
</html>
