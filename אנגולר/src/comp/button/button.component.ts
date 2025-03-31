import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Router } from 'express';

@Component({
  selector: 'app-button',
  standalone: true,
  imports: [],
  templateUrl: './button.component.html',
  styleUrl: './button.component.css'
})

export class buttonComponent {

@Input() btnValue:string|undefined
@Input() class:string|undefined
//איקונים
@Input() title:string= ""

@Input() Id?:string

@Output() fromB=new EventEmitter()


 btn()
{
  this.fromB.emit(this.Id)
}}
