import { Component } from '@angular/core';
import {RouterLink } from '@angular/router';
import { ChangeColorDirective } from '../change-color.directive';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterLink,ChangeColorDirective],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

}
