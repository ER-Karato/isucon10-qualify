ALTER TABLE estate ADD pt POINT AS (POINT(latitude,longitude)) STORED;
ALTER TABLE estate MODIFY COLUMN pt POINT NOT NULL;
ALTER TABLE estate ADD ngpopularity INTEGER AS (-popularity) NOT NULL;

ALTER TABLE estate ADD INDEX index_ngpopularity_id (ngpopularity,id);
ALTER TABLE estate ADD INDEX index_rent_id (rent,id);
ALTER TABLE estate ADD INDEX index_door_height_rent (door_height,rent);
ALTER TABLE estate ADD INDEX index_door_width_rent (door_width,rent);
ALTER TABLE estate ADD INDEX index_door_height_door_width_ngpopularity_id (door_height,door_width,ngpopularity,id);
ALTER TABLE estate ADD INDEX index_door_height_door_width_rent_width_ngpopularity_id (door_height,door_width,rent,ngpopularity,id);

ALTER TABLE estate ADD INDEX index_id (id);
ALTER TABLE estate ADD INDEX index_rent (rent);
ALTER TABLE estate ADD INDEX index_door_height (door_height);
ALTER TABLE estate ADD INDEX index_door_width (door_width);
ALTER TABLE estate ADD SPATIAL INDEX index_pt (pt);