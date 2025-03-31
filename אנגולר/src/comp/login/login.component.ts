import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { customer } from '../../classes/customer';
import { CustomerService } from '../../services/customer.service';
import { Router, RouterLink, RouterOutlet } from '@angular/router';


@Component({
  selector: 'app-login',
  standalone: true,
  imports: [FormsModule,RouterOutlet, RouterLink],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})

export class LoginComponent  implements OnInit{
  ngOnInit(): void {
    // לבדיקת התקינות של התאריך
    const today1=new Date()
    this.today=today1.toISOString().split("T")[0]
}
  
  constructor(public cs: CustomerService,public router:Router){}
newUser:customer=new customer()
register:boolean=false
today:string=""


save(){
  if(this.register==false){
//בדיקה האם המשתמש קיים
this.cs.postLogin(this.newUser.Name!,this.newUser.Amail!).subscribe(
      succ => { 
        console.log(succ)
        console.log("good")
        this.cs.thisCustomer = succ
        this.newUser=succ
        console.log( this.cs.thisCustomer)
     if(succ.Id!=0)
     { alert("התחברת בהצלחה!")
      //var x=this.today.split("-")
      // console.log(succ.DateBorn!.getMonth().toString(),x[1]);
      //console.log(this.today);
      // if(succ.DateBorn!.getMonth.toString()==x[1])
      //  alert("מזל טוב ליום הולדתך"+succ.Name)
      this.router.navigate(['../../להזמנות']);
     }
     else
{ 
    alert( "הינך צריך להרשם אלינו!")
    this.register=true
        }
 
      },
      err => { console.log("error "+err.message)}
    )}
    //אם לא מחובר
else{
    this.cs.register(this.newUser).subscribe(
      succ => { 
        console.log(succ)
        console.log("good")
  this.cs.thisCustomer=succ
     alert("נרשמת בהצלחה!")
      console.log(this.cs.thisCustomer)
      this.router.navigate(['../../להזמנות']);
 
      },
      err => { console.log("error "+err.message)}
    )

}}}

