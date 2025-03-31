import { Component } from '@angular/core';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { ProductService } from '../../services/product.service';
import { product } from '../../classes/product';
import { DetailsService } from '../../services/Details.service';
import { CurrencyPipe } from '@angular/common';

@Component({
  selector: 'app-more-detels',
  standalone: true,
  imports: [RouterLink,CurrencyPipe],
  templateUrl: './more-detels.component.html',
  styleUrl: './more-detels.component.css'
})

export class MoreDetelsComponent { 
  id:number=0
  carentS:product=new product()
  location: any;

  constructor(public ps: ProductService,public ds: DetailsService,public activated:ActivatedRoute) {
  this.activated.params.subscribe(d=>{
   this.id= d['id'];
   this.loudProduct();
 });}

loudProduct(){
  //מציאת המוצר המסוים לפי ה id
    let s=this.ps.allP.find(s=>s.Id==+this.id);
    if(s){
      this.carentS=s
    }
      else{
      alert("כתובת שגויה")
  }   
}}
