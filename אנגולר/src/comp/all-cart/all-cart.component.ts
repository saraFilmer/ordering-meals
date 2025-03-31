import { Component, OnInit } from '@angular/core';
import { ProductService } from '../../services/product.service';
import { CustomerService } from '../../services/customer.service';
import { ActivatedRoute, Router, RouterLink } from '@angular/router';
import { product } from '../../classes/product';
import { DetailsService } from '../../services/Details.service';
import { details } from '../../classes/details';
import { BuyService } from '../../services/buy.service ';
import { buy } from '../../classes/buy';
import { ListPipe } from '../list.pipe';
import Swal from 'sweetalert2';
import { CurrencyPipe } from '@angular/common';
import { buttonComponent } from '../button/button.component';

@Component({
  selector: 'app-all-cart',
  standalone: true,
  imports: [RouterLink,ListPipe,CurrencyPipe,buttonComponent],
  templateUrl: './all-cart.component.html',
  styleUrl: './all-cart.component.css'
})
export class AllCartComponent{
    //בעת טעינה של הקומפוננטה
  //שליפה מהסרוויס
  // ngOnInit(): void { this.allD = this.ds.allD}

  id:number=0
  location: any;
  carentS: product = new product()
  thisD: details = new details()
  allD: Array<details> = new Array<details>()
  count: number = 0;
  creatbuy: buy = new buy();
  t:product = new product()
  p:product = new product()
  pHtml:product = new product()

  constructor(public ps: ProductService, public ds: DetailsService, public bs: BuyService, public cs: CustomerService, public activated: ActivatedRoute,
    public router: Router) {
 
 
  this.activated.params.subscribe(d => {
    this.id = d['id'];
    this.allD = this.ds.allD

  }); }

  //בדיקה האם הלקוח מחובר ויוצר את הקניה הראשונה
 send (){
     if (!this.cs.thisCustomer.Id)
       this.router.navigate(['../../להתחברות']);
    console.log(this.cs.thisCustomer.Name );
 
//שליפה מהסרוויס
     this.creatbuy.IdCustomers = this.cs.thisCustomer.Id
     this.creatbuy.NameCustomers = this.cs.thisCustomer.Name  

 // שומר את הקניה עמ לקבל את id 
     this.bs.post(this.creatbuy)
       .subscribe(
         succ => {
           //יצירת buy
           console.log(succ)
           this.bs.currentBuy = succ
           console.log(this.bs.currentBuy)
           //מחשב את הסכום בלי שליפה מהשרת
          this.sumFunc()
         },err => { console.log("error " + err.message) })}
 
         sum1:number=0
         sumFunc(){  //חישוב בסיסי של הסכום לתשלום ללא קריאת שרת
          this.ds.allD.forEach(de => {de.IdBuy=this.bs.currentBuy.Id
           this.sum1=this.sum1+(de.PriceProduct!*de.CountBuy!)})!
           //מדפיס את הקבלה לפני האישור של משתמש
          this.paper()
          }

     
          paper(){
            let productsInfo = '';
            productsInfo+=`תאריך קניה: ${this.bs.currentBuy.DateBuy}\n`
           
            this.allD.forEach(de => {
              productsInfo += `שם: ${de.NameProduct!}\n, מחיר: ${de.PriceProduct!}\n, כמות: ${de.CountBuy!}\n`;
            });
            productsInfo+=`לתשלום: ${this.sum1}\n`
           
          
            Swal.fire({
              title: 'בחר אפשרות',
              text:  productsInfo,
              icon: 'question',
              showCancelButton: true,
              confirmButtonText: 'אישור',
              cancelButtonText: 'ביטול'
            }).then((result) => {
              //אם אשר
              if (result.isConfirmed) {
                //שמירת הנתונים במסד
               this.detail()
              }});}
        

         //שמירת הפרטים שהמשתמש בחר
         detail(){
      this.ds.addList(this.allD).subscribe(
        f => {
             console.log("DetailLast",f)
                   this.ds.allD=f
                   this.sum()
                 },
                 err => { console.log("error " + err.message) } ) }

                 //+ אישור לתשלום 1קבלה למשתמש 
          //מחשב את הסכום יחד עם ההנחות עם קריאת שרת
        sum(){
         this.ds.sum(this.ds.allD).subscribe (
             d => 
             {
               console.log("sum",d)
              this.bs.currentBuy.SumPrice=d
              console.log("buy", this.bs.currentBuy)

              this.finish()
             },           
             err => { console.log("error " + err.message) }
           )}
 
   //מעדכן את הקניה בשרת
  finish(){       
 console.log("buy befor",this.bs.currentBuy);
  this.bs.putch(this.bs.currentBuy).subscribe
 (
   d => 
   {
     console.log("Last buy",d)
  this.bs.currentBuy=d
    console.log( "Last buy+",this.bs.currentBuy)
    //קבלה סופית כאשרא אשר
this.paper2()
this.router.navigate(['../../']);
   },     
   err => { console.log("error " + err.message) }
 )}
  
//קבלה סופית
  paper2(){
    let productsInfo = '';
   productsInfo+=`תאריך קניה: ${this.bs.currentBuy.DateBuy}\n`
  
   this.allD.forEach(de => {
     productsInfo += `שם: ${de.NameProduct!}\n, מחיר: ${de.PriceProduct!}\n, כמות: ${de.CountBuy!}\n`;
   });
   productsInfo+=`לתשלום: ${this.bs.currentBuy.SumPrice}\n`
  productsInfo+=`בקניה זו חסכת: ${this.sum1-this.bs.currentBuy.SumPrice!}`

	    Swal.fire({
       title: 'שולם בהצלחה!',
       text:productsInfo ,
      icon: 'info',
 	      confirmButtonText: 'אוקי'
 	    });
  }
       }

