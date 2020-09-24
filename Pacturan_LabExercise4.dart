void main() {
  var phone = {
    'Item ID': '1',
    'Price': '25000',
    'Quantity': '1',
    'Discount': '10'
  };
  var externalHardDrive = {
    'Item ID': '2',
    'Price': '5000',
    'Quantity': '1',
    'Discount': '10'
  };
  var headSet = {
    'Item ID': '3',
    'Price': '1500',
    'Quantity': '1',
    'Discount': '10'
  };
  var chair = {
    'Item ID': '4',
    'Price': '3000',
    'Quantity': '10',
    'Discount': '20'
  };
  var computer = {
    'Item ID': '5',
    'Price': '50000',
    'Quantity': '10',
    'Discount': '20'
  };

  phone['Subtotal'] = getSubtotal(phone).toString();
  externalHardDrive['Subtotal'] = getSubtotal(externalHardDrive).toString();
  headSet['Subtotal'] = getSubtotal(headSet).toString();
  chair['Subtotal'] = getSubtotal(chair).toString();
  computer['Subtotal'] = getSubtotal(computer).toString();

  var myList = [phone, externalHardDrive, headSet, chair, computer];

  int TotalPayable = 0;

  myList.forEach((element) => {
        element['Price'] = "P" + element['Price'],
        element['Discount'] = element['Discount'] + "%",
        element.forEach((k, v) => print(k + " : " + v)),
        print(""),
        TotalPayable += int.parse(element['Subtotal'])
      });
  print("Total Amount Payable: P" + TotalPayable.toString());
}

int getSubtotal(var myMap) {
  int price = int.parse(myMap['Price']);
  int quantity = int.parse(myMap['Quantity']);
  double discount = double.parse("0." + myMap['Discount']);

  double discountValue = price * discount;
  return (price - discountValue.toInt()) * quantity;
}
