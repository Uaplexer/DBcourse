CREATE TABLE Categories
(
    id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE News
(
    id INT PRIMARY KEY,
    category_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Comments
(
    id INT PRIMARY KEY,
    news_id INT,
    user_name VARCHAR(255) NOT NULL,
    comment_text TEXT NOT NULL,
    FOREIGN KEY (news_id) REFERENCES News(id)
);

CREATE TABLE Ratings
(
    id INT PRIMARY KEY,
    news_id INT,
    ip_address VARCHAR(15) NOT NULL,
    rating_value INT CHECK (rating_value >= 1 AND rating_value <= 5),
    FOREIGN KEY (news_id) REFERENCES News(id)
);
