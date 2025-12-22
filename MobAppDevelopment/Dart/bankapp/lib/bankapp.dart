import 'dart:io';
import 'bahl.dart';

void main(){
  try{
    BAHL owaisAccount = BAHL();
    print("Bank Al Habib Limited (BAHL) Account");
    print("---------------------------------------------");
    print("What operation would you like to perform?");
    print("1. Deposit");
    print("2. Withdraw");
    print("3. Balance Inquiry");
    stdout.write("Enter your choice (1-3): ");
    int choose = int.parse(stdin.readLineSync()!);

    if(choose > 0 || choose < 4){
      if(choose == 1){
        stdout.write("Enter amount to deposit: ");
        num amount = num.parse(stdin.readLineSync()!);
        owaisAccount.deposit(amount);
      }else if(choose == 2){
        stdout.write("Enter amount to withdraw: ");
        num amount = num.parse(stdin.readLineSync()!);
        owaisAccount.withdraw(amount);
      }else if(choose == 3){
        owaisAccount.balanceInquiry();
      } 
    }else{
      print("Invalid Choice");
    }
  }catch(e){
    print("Error: ${e.toString()}");
  }
}