import { Directive, ElementRef, HostListener} from '@angular/core';

@Directive({
  selector: '[appChangeColor]',
  standalone: true
})
export class ChangeColorDirective {
  constructor(er: ElementRef) {
    let r=Math.floor(Math.random()*255)
    let g=Math.floor(Math.random()*255)
    let b=Math.floor(Math.random()*255)
    er.nativeElement.style.backgroundColor = 'rgb('+r+','+g+','+b+')'
    this.myElement=er
  }
myElement:ElementRef|undefined
  mycolor:string=""
  @HostListener('mouseover')
  backcolor()
  {
   this.mycolor=this.myElement!.nativeElement.style.backgroundColor
   this.myElement!.nativeElement.style.backgroundColor = 'yellow'
  }
  @HostListener('mouseleave')
  backcolor1()
  {
this.myElement!.nativeElement.style.backgroundColor = this.mycolor
  }
}
