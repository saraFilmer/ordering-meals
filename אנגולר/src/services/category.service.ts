import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { category } from '../classes/category';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {
    constructor(public server:HttpClient) { }
    //שליפת כל הקטגוריות
    getC():Observable<Array<category>>
    {
      return this.server.get<Array<category>>('https://localhost:7271/api/Category')
    }
     allcat: Array<category> = new Array<category>()
}
