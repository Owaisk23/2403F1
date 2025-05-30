import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, FormsModule,HttpClientModule ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'crud';

  constructor(private http: HttpClient){

  }

  onProductCreate(products: {
    pName: string,
    desc: string,
    price: string
  }){
    console.log(products)
    this.http.post('https://crud-2403f1-default-rtdb.asia-southeast1.firebasedatabase.app/products.json', products)
    .subscribe((res) => {
      console.log(`new product: `, res)
    })
  }
}
