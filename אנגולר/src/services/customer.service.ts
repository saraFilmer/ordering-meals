import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { customer } from '../classes/customer';

@Injectable({
  providedIn: 'root'
})
export class CustomerService {
    constructor(public server:HttpClient) { }
    postLogin(Name:string,Amail:string):Observable<customer>
    { 
      return this.server.get<customer>('https://localhost:7271/api/Customer'+'/'+Name+'/'+Amail)
    } 
    //מחזיר אוביקט
    register(c:customer):Observable<customer>
    {
      return this.server.post<customer>('https://localhost:7271/api/Customer',c)
    } 
     thisCustomer:customer=new customer();
     thisDate:string=""
}
