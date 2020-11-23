package com.qdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qdu.bean.Admin;
import com.qdu.bean.Book;
import com.qdu.bean.Borrow;
import com.qdu.bean.User;
import com.qdu.dao.AdMapper;

@Service
public class AdService {

	@Autowired
	private AdMapper AdMapper;
	
	public List<Admin> checkAdminLogin(Admin admin) {
		return AdMapper.checkAdminLogin(admin);
	}
	
	public List<Book> getAllBooks()
	{
		return AdMapper.getAllBooks();
	}
	public void deleteBooks(int bookid)
	{
		AdMapper.deleteBooks(bookid);
	}
	public List<Book> selectBooks(int bookid)
	{
		return AdMapper.selectBooks(bookid);
	}
	public List<User> getAllUsers()
	{
		return AdMapper.getAllUsers();
	}
	public List<User> selectUser(int id)
	{
		return AdMapper.selectUser(id);
	}
	public void deleteUser(int id)
	{
		AdMapper.deleteUser(id);
	}
	public List<Borrow> selectUserByUserName(String username)
	{
		return AdMapper.selectUserByUserName(username);
	}
	public List<Borrow> selectBorrowByRentid(int rentid)
	{
		return AdMapper.selectBorrowByRentid(rentid);
	}
	public void deleteBorrowRecord(int rentid)
	{
		AdMapper.deleteBorrowRecord(rentid);
	}
	public void updateBorrowRecordState1(int rentid)
	{
		AdMapper.updateBorrowRecordState1(rentid);
	}
	public void updateBorrowRecordState2(int rentid)
	{
		AdMapper.updateBorrowRecordState2(rentid);
	}
	public List<User> searchByUserName(String username)
	{
		return AdMapper.searchByUserName(username);
	}
	public List<Book> searchByBookName(String bookname)
	{
		return AdMapper.searchByBookName(bookname);
	}
	public List<Borrow> getBorrowByBookId(int bookid)
	{
		return AdMapper.getBorrowByBookId(bookid);
	}
	
	
	/*-----------------------------------------------------------------------------------------*/
	public void add_Book(Book book){
		
		AdMapper.add_Book(book);
	}
	public void add_user(User user) {
		// TODO Auto-generated method stub
		AdMapper.add_user(user);
	}
	public void update_user(User user) {
		// TODO Auto-generated method stub
		AdMapper.updateUser(user);
	}
	public void update_Book(Book book) {
		// TODO Auto-generated method stub
		AdMapper.updateBook(book);
	}
	public List<Book> getbookByID(int book_id){
		List<Book> list=AdMapper.getbookByID(book_id);
		return list;
	}

	public List<User> getuserByID(int user_id) {
		// TODO Auto-generated method stub
		List<User> list=AdMapper.getuserByID(user_id);
		return list;
	}


	
}
