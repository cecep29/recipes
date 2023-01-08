class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Ayam Bakar', 'assets/images/ayam_bakar.jpg'),
    Recipe('Gado Gado', 'assets/images/gado_gado.jpg'),
    Recipe('Mie Ayam', 'assets/images/mi_ayam.jpeg'),
    Recipe('Nasi Goreng', 'assets/images/nasi_goreng.jpg'),
  ];
}
