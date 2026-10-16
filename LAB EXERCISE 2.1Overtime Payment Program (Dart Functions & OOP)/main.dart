import 'myLib.dart' as emp;

void main(){
  double extraPayPerHr;
  var wendy= emp.Employee('Manager', 'Edinburgh', 5000,7);

  if(wendy.salary >= 4000){
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }

  double total = wendy.salary + (wendy.overtimeHr * extraPayPerHr);
  print('Total Salary = \$$total USD');
}