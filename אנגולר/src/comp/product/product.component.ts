import { Component, OnInit } from '@angular/core';
import { ProductService } from '../../services/product.service';
import { product } from '../../classes/product';
import { Router, RouterLink } from '@angular/router';
import { buttonComponent } from '../button/button.component';
import { CategoryService } from '../../services/category.service';
import { CampanyService } from '../../services/campany.service';
import { company } from '../../classes/company';
import { category } from '../../classes/category';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { DetailsService } from '../../services/Details.service';
import { details } from '../../classes/details';
import { ChangeColorDirective } from '../change-color.directive';

@Component({
  selector: 'app-product',
  standalone: true,
  imports: [buttonComponent,FormsModule,CommonModule,RouterLink,ChangeColorDirective],//שייך לטפסים,CommonModule-NGCLASS
  templateUrl:'./product.component.html',
  styleUrl: './product.component.css'
})

export class ProductComponent implements OnInit{
constructor(public ps: ProductService,public r:Router, public CatS:CategoryService, public compS:CampanyService,public ds:DetailsService) { }

ngOnInit(): void {
  console.log(this.ps.allP.length);
  this.allD=this.ds.allD
  //בתוספות אינו מציג את הסלטים
  if(this.b==true){
    this.allD=this.allD.filter(x=>!x.NameProduct?.startsWith('-'));
  }
    
  //שלא ישלוף כל פעם מחדש את המוצרים
  if(this.ps.allP.length==0){
//מזמנת את כל קריאות שרת של כל המוצרים
  this.get()}
  else
  //שלוף מהסרוויס את רשימת המוצרים
  this.allP=this.ps.allP
//מזמנת את כל קריאות השרת לסינון חברה קטגוריה ומחיר
if(this.compS.allcom.length==0&&this.CatS.allcat.length==0)
  {this.filter()}

else{
 this.allCom= this.compS.allcom
 this.allCat=this.CatS.allcat
}
console.log(this.CatS.allcat,this.compS.allcom);
} 
allD: Array<details> = new Array<details>()
allP: Array<product> = new Array<product>()
allCom: Array<company> = new Array<company>()
allCat: Array<category> = new Array<category>()
thisFilter:product= new product()

//זימון כל המוצרים-שליפה
get() {
  this.ps.getP().subscribe(
    succ => { 
      console.log(succ)
      this.allP = succ
      this.ps.allP=succ
    },
    err => { console.log("error "+err.message)}
  )
}

//שולף את החברות והקטגוריות
filter(){
  //חברה
    this.compS.getC().subscribe( 
      succ => {
        this.allCom = succ
        this.compS.allcom=succ//serviceשמירה במסד הנתונים
        console.log(succ)
      },
      err => { console.log("error " + err.message) }
    )

//קטגוריה
    this.CatS.getC().subscribe(
      succ => { 
        this.allCat = succ
        this.CatS.allcat=succ//serviceשמירה במסד הנתונים
        console.log(succ)
      },
      err => { console.log("error " + err.message) }
    )
  }

 //שליפה לפי הסינון
  save(){  
    this.ps.getFilter(this.thisFilter.NameCategory,this.thisFilter.NameCompany,this.thisFilter.Price)
    .subscribe(
      succ => { 
        this.allP = succ
        this.ps.allP=succ
       
        if(succ.length==0)
          alert("לא נמצא")
      },
      err => { console.log("error " + err.message) }
    )  
  }
  
//מיונים
sortByName(){
  this.allP.sort((a,b)=>a.Name!.localeCompare(b.Name!))
}
sortByPrice(){
  this.allP.sort((a,b)=>a.Price!-b.Price!)
}


b:boolean=false
//אם נקנה סלט אחד לפחות
choise(){
this.b=true
}

}