package models

import "gorm.io/gorm"

type UpdateBookInput struct {
	Title  string `json:"title"`
	Author string `json:"author"`
}

type CreateBookInput struct {
	Title  string `json:"title" binding:"required"`
	Author string `json:"author" binding:"required"`
}

type Book struct {
	gorm.Model
	Title  string `json:"title"`
	Author string `json:"author"`
}

type BookOutput struct {
	ID     string `json:"id"`
	Title  string `json:"title"`
	Author string `json:"author"`
}
