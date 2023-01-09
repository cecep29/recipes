class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Ayam Bakar', 'assets/images/ayam_bakar.jpg', 1, [
      Ingredient(1, 'sendok', 'kecap manis'),
      Ingredient(5, 'buah', 'Cabe Merah'),
      Ingredient(1, 'Ekor', 'Ayam')
    ]),
    Recipe('Gado Gado', 'assets/images/gado_gado.jpg', 1, [
      Ingredient(5, 'sendok', 'Kacang tanah'),
      Ingredient(1, 'Piring', 'Sayuran')
    ]),
    Recipe('Mie Ayam', 'assets/images/mi_ayam.jpeg', 1, [
      Ingredient(1, 'sendok', 'Kecap asin'),
      Ingredient(1, 'Mangkok', 'Mi')
    ]),
    Recipe('Nasi Goreng', 'assets/images/nasi_goreng.jpg', 1,
        [Ingredient(1, 'Piring', 'Nasi putih')]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
