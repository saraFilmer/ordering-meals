import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { category } from '../classes/category';
import { details } from '../classes/details';
import { product } from '../classes/product';

@Injectable({
  providedIn: 'root'
})
export class DetailsService {
    constructor(public server:HttpClient) {}
    // getD():Observable<Array<details>>
    // {
    //   return this.server.get<Array<details>>('https://localhost:7271/api/Details')
    // }
        allD: Array<details> = new Array<details>()
        NallD: Array<details> = new Array<details>()
//הסכום לתשלום
   sum(l:Array<details>):Observable<number>
    {     console.log(l[0])
      return this.server.post<number>('https://localhost:7271/api/Details/SumPrice',l)
    } 
    //הוספת פרטי הקניה
    addList(l:Array<details>):Observable<Array<details>>
    {     console.log(l[0])
      return this.server.post<Array<details>>('https://localhost:7271/api/Details/AddList',l)
    } 
}
