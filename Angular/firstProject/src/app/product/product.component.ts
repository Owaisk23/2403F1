import { Component } from '@angular/core';

@Component({
  selector: 'app-product',
  standalone: true,
  imports: [],
  templateUrl: './product.component.html',
  styleUrl: './product.component.css'
})
export class ProductComponent {
  productName: String = 'IPhone 14';
  productPrice: Number = 1000;
  productDescription: String = 'This is a great phone';
}
