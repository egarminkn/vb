package org.verygroup.verybook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.verygroup.verybook.BookType;
import org.verygroup.verybook.model.LikesDislikesInfo;
import org.verygroup.verybook.model.UserBookCompliance;
import org.verygroup.verybook.repository.UserBookLikesDislikesDao;

@Service
public class UserBooksService {

    @Autowired
    private UserBookLikesDislikesDao userBookLikesDislikesDao;

    public LikesDislikesInfo getLikesDislikesInfoBy(String userId, BookType bookType, String bookId) {
        return userBookLikesDislikesDao.getLikesDislikesInfoBy(new UserBookCompliance(userId, bookType, bookId));
    }

    public boolean likeDislikeBook(String userId, BookType bookType, String bookId, boolean grade) {
        return userBookLikesDislikesDao.likeDislikeBook(new UserBookCompliance(userId, bookType, bookId), grade);
    }

}