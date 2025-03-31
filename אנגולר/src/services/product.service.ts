import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { product } from '../classes/product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  // נזריק משתנה מסוגו
    constructor(public server:HttpClient) { }
    urlBase:string="https://localhost:7271/api/Product"
     carrentStudent:product=new product()
    allP: Array<product> = new Array<product>()
    //שליפת כל המוצרים
    getP():Observable<Array<product>>
     {
      return this.server.get<Array<product>>(this.urlBase)
     }
     //שליפה לפי הפרמטרים בסינון
    getFilter(NameCategory?:string, NameCompany?:string,Price?:number):Observable<Array<product>>
    {
      let params=new HttpParams();
      if( NameCategory!=null)
        params=params.set('NameCategory',NameCategory)
      if( NameCompany!=null)
        params=params.set('NameCampany',NameCompany)      
      if(Price!=null)
        params=params.set('Price',Price.toString())
     console.log(NameCategory)
    return this.server.get<Array<product>>(this.urlBase +'/filter/',{params});}

    // put(p:product):Observable<product>
    // {
    //  return this.server.put<product>('https://localhost:7271/api/Product',p)
    // }
  }




    

