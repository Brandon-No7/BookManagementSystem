package com.qdu.dao;

import java.util.List;

import com.qdu.bean.Admin;
import com.qdu.bean.Book;
import com.qdu.bean.Borrow;
import com.qdu.bean.User;

public interface AdMapper {
	List<Admin> checkAdminLogin(Admin admin);
	List<Book> getAllBooks();
	void deleteBooks(int bookid);
	List<Book> selectBooks(int bookid);
	List<User> getAllUsers();
	List<User> selectUser(int id);
	void deleteUser(int id);
	List<Borrow> selectUserByUserName(String username);
	List<Borrow> selectBorrowByRentid(int rentid);
	void deleteBorrowRecord(int rentid);
	void updateBorrowRecordState1(int rentid);
	void updateBorrowRecordState2(int rentid);
	List<User> searchByUserName(String username);
	List<Book> searchByBookName(String bookname);
	List<Borrow> getBorrowByBookId(int bookid);
	
	/*----------------------------------------------------------------------------*/
	List<Book> getbookByID(int book_id);
	void add_Book(Book book);
	void updateBook(Book book);
	void add_user(User user);
	void updateUser(User user);
	List<User> getuserByID(int user_id);
	
}
