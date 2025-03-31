import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { ProductComponent } from '../comp/product/product.component';
import { LoginComponent } from '../comp/login/login.component';
import { AllCartComponent } from '../comp/all-cart/all-cart.component';
import { MatconimComponent } from '../comp/matconim/matconim.component';


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,ProductComponent,RouterLink,LoginComponent,AllCartComponent,MatconimComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'Project';
}
