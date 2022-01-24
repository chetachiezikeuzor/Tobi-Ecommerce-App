import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MainHeroComponent } from './main-hero.component';

describe('MainHeroComponent', () => {
  let component: MainHeroComponent;
  let fixture: ComponentFixture<MainHeroComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MainHeroComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MainHeroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
