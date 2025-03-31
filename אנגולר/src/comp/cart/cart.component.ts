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
import { buttonComponent } from '../button/button.component';

@Component({
  selector: 'app-cart',
  standalone: true,
  imports: [RouterLink,ListPipe,buttonComponent],
  templateUrl: './cart.component.html',
  styleUrl: './cart.component.css'
})
export class CartComponent{
  id: number = 0
  location: any;
  carentS: product = new product()
  thisD: details = new details()
  allD: Array<details> = new Array<details>()
  count: number = 0;
  p:product = new product()

  constructor(public ps: ProductService, public ds: DetailsService, public bs: BuyService, public cs: CustomerService, public activated: ActivatedRoute,
    public router: Router) {

    this.activated.params.subscribe(d => {
      this.id = d['id'];
      this.loudCart();
      this.allD = this.ds.allD
      //אם כבר קיים בפריטים יעדכן את הכמות לשינוי
      var p=this.ds.allD.find(x=>x.Idproduct==this.id)
      if(p)
        this.count=p.CountBuy! 
    });
  }

//מציאת המוצר ברשימת המוצרים
  loudCart() {
    let s = this.ps.allP.find(s => s.Id == +this.id);
    if (s) {
      this.carentS = s
    }
    else {
      alert("כתובת שגויה")
    }
  }

  //details הוספה לפרמטריים
  add() {
    //הצבה בפריט הנוכחי את הפרמטרים של המוצר
    this.thisD.Idproduct = this.carentS.Id
    this.thisD.NameProduct = this.carentS.Name
    this.thisD.PriceProduct=this.carentS.Price
    this.thisD.DescriptionProduct=this.carentS.Description

    this.thisD.CountBuy = this.count
    var t = this.allD.find(x => x.Idproduct == this.thisD.Idproduct)
    console.log(t);

    //אם קיים ברשימה הבנא"ד
    if (!t&&this.thisD.CountBuy! >0) {    
      this.ds.allD.push(this.thisD)}
    
      else if(t){
      t.CountBuy=this.count      
    }
      //יורד לי לפי כמות הקניה שלו ללא ריענון
    this.carentS.QuantityInStock=this.carentS.QuantityInStock!-this.thisD.CountBuy
      console.log(this.thisD);
      this.allD = this.ds.allD
      console.log(this.ds.allD)
  }

  plous() {
    //אינו מאפשר לקנות יותר מהמלאי המעודכן כרגע
       this.p=this.ps.allP.find(x=>x.Id==this.id)!
       if(this.p.QuantityInStock!>this.count){
       this.count = this.count + 1;
  }}

  Minus() {
    if (this.count > 0) {
      this.count = this.count - 1;
    }
  } }