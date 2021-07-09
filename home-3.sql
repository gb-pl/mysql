use vk;
CREATE TABLE like (
  from_user_id BIGINT UNSIGNED NOT NULL,
  to_media_id BIGINT UNSIGNED NOT NULL,
  accepted BOOLEAN DEFAULT False,
  PRIMARY KEY (from_user_id, to_media_id),
  KEY (from_user_id),
  KEY (to_media_id),
  CONSTRAINT fk_like_requests_users_1 FOREIGN KEY (from_user_id) REFERENCES users (id), --??
  CONSTRAINT fk_like_requests_users_2 FOREIGN KEY (to_user_id) REFERENCES media (id) --??
);
