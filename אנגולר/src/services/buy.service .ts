import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { buy } from '../classes/buy';

@Injectable({
  providedIn: 'root'
})
export class BuyService {
    constructor(public server:HttpClient) { }

    //הוספת קניה
    post(buy:buy):Observable<buy>
    {
      return this.server.post<buy>('https://localhost:7271/api/Buy',buy)      
    }
    //עדכון קניה
    putch(buy:buy):Observable<buy>
    {
      return this.server.put<buy>('https://localhost:7271/api/Buy',buy)      
    }
    currentBuy:buy=new buy()
}
