import { Product } from './product';

export class Category {
  categoryName?: string;
  categoryImageUrl?: string;
  categoryColor?: string;
  products?: Array<Product>;
}
