import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-search-box',
  templateUrl: './search-box.component.html',
  styleUrls: ['./search-box.component.css'],
})
export class SearchBoxComponent implements OnInit {
  public searchKeyword?: string;
  constructor(private router: Router) {}

  ngOnInit(): void {}

  doSearch(input: string) {
    console.log(input);
    this.searchKeyword = input;
    this.router.navigateByUrl(`/search/${input}`);
  }
}
