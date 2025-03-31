import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { category } from '../classes/category';
import { company } from '../classes/company';

@Injectable({
  providedIn: 'root'
})
export class CampanyService {
    constructor(public server:HttpClient) { }
    //שליפת כל החברות
    getC():Observable<Array<company>>
    {
      return this.server.get<Array<company>>('https://localhost:7271/api/Campany')
    }
     allcom: Array<company> = new Array<company>()
}
