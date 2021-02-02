ALTER TABLE chair ADD ngpopularity INTEGER AS (-popularity) NOT NULL;

ALTER TABLE chair ADD INDEX index_ngpopularity_id (ngpopularity,id);
ALTER TABLE chair ADD INDEX index_price_id (price,id);
ALTER TABLE chair ADD INDEX index_price_stock (price,stock);
ALTER TABLE chair ADD INDEX index_height_stock (height,stock);
ALTER TABLE chair ADD INDEX index_depth_stock (depth,stock);
ALTER TABLE chair ADD INDEX index_features_stock (features,stock);
ALTER TABLE chair ADD INDEX index_kind_stock (kind,stock);
ALTER TABLE chair ADD INDEX index_stock_price_id (stock,price,id);
ALTER TABLE chair ADD INDEX index_all (price,height,width,depth,kind,color,features,stock);

ALTER TABLE chair ADD INDEX index_id (id);
ALTER TABLE chair ADD INDEX index_price (price);
ALTER TABLE chair ADD INDEX index_height (height);
ALTER TABLE chair ADD INDEX index_width (width);
ALTER TABLE chair ADD INDEX index_depth (depth);
ALTER TABLE chair ADD INDEX index_color (color);
ALTER TABLE chair ADD INDEX index_features (features);
ALTER TABLE chair ADD INDEX index_kind (kind);
ALTER TABLE chair ADD INDEX index_stock (stock);