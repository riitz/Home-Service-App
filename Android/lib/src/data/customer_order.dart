class CustomerSelectedOrder {
  final String id;
  final String servicename;
  final String ordertime;
  final String employeenumber;
  final String employeename;
  final String price;

    CustomerSelectedOrder({
    this.id,
    this.servicename,
    this.ordertime,
    this.employeenumber,
    this.employeename,
    this.price,
  });
  
}

final customerselectedorders = [
  CustomerSelectedOrder(
    id: '1',
    servicename: 'Face cleansing',
    ordertime: '9:48 AM',
    employeename: 'Sarita Thapa',
    employeenumber: '9808124123',
    price: '500',
  ),
  /*
    CustomerSelectedOrder(
    id: '2',
    servicename: 'Face cleansing',
    ordertime: '10:00 AM',
    employeename: 'Binita Shrestha',
    employeenumber: '9808781234',
    price: '500',
  )
  */
];
