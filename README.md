# テーブル設計

## usersテーブル

| Column          | Type          | Options       |
|-----------------|---------------|---------------|
| email           | string        | NOT NULL      |
| password        | string        | NOT NULL      |
| name            | string        | NOT NULL      |
| profile         | text          | NOT NULL      |
| occupation      | text          | NOT NULL      |
| position        | text          | NOT NULL      |

### Association

 - has_many :comment
 - has_many :prototype
## commentsテーブル

| Column          | Type          | Options       |
|-----------------|---------------|---------------|
| text            | text          | NOT NULL      |
| user            | references    |               |
| prototype       | references    |               |

### Association

 - belongs_to :user
 - belongs_to :prototype

## prototypesテーブル

| Column          | Type          | Options       |
|-----------------|---------------|---------------|
| title           | string        | NOT NULL      |
| catch_copy      | text          | NOT NULL      |
| concept         | text          | NOT NULL      |
| user            | references    |               |

### Association

- has_many   :comment
- belongs_to :user
