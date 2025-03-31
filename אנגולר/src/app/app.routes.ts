import { Routes } from '@angular/router';
import { HomeComponent } from '../comp/home/home.component';
import { TimeComponent } from '../comp/time/time.component';
import { ProductComponent } from '../comp/product/product.component';
import { MoreDetelsComponent } from '../comp/more-detels/more-detels.component';
import { CartComponent } from '../comp/cart/cart.component';
import { LoginComponent } from '../comp/login/login.component';
import { AllCartComponent } from '../comp/all-cart/all-cart.component';
import { MatconimComponent } from '../comp/matconim/matconim.component';

export const routes: Routes = [
    {path:"", component:HomeComponent},
    {path:'שעות פעילות', component:TimeComponent},
    {path:'להתחברות', component:LoginComponent},
    {path:"להזמנות", component:ProductComponent},
    {path:'more/:id', component:MoreDetelsComponent},
    {path:'cart/:id', component:CartComponent},
    {path:'סל הקניות', component:AllCartComponent},
    {path:'מתכונים', component:MatconimComponent}
];
