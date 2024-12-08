class ModelBag {
  final String name;
  final String img;
  final String color;
  final String size;
   int quantity;
  final int totalAmount;

  ModelBag(
      {
        required this.name,
        required this.img,
        required this.color,
        required this.size,
        required this.quantity,
        required this.totalAmount
      }
      );
}
class PromoOffer {
  final String discount; // e.g., '10% off'
  final String title; // e.g., 'Personal offer'
  final String promoCode; // e.g., 'my_promo_code2020'
  final String remainingTime; // e.g., '6 days remaining'
  final String buttonText;// e.g., 'Apply'

  PromoOffer({
    required this.discount,
    required this.title,
    required this.promoCode,
    required this.remainingTime,
    required this.buttonText,

  });
}
