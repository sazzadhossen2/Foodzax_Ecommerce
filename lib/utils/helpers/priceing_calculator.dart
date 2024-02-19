

class TPriceCalculator {
  static double calculateTotalPrice(double productprice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productprice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productprice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productprice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
