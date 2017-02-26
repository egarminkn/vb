package org.verygroup.verybook.model;

public class LikesDislikesInfo {

    private boolean likesLink;
    private boolean dislikesLink;

    /**
     * Если grade == null - значит не поставлен ни лайк, ни дизлайк
     * Если grade == true - значит поставлен лайк
     * Если grade == false - значит поставлен дизлайк
     */
    private Boolean grade = null;

    /*
     * Конструкторы
     */
    public LikesDislikesInfo() {
        // конструктор по умолчанию
    }

    public LikesDislikesInfo(boolean likesLink, boolean dislikesLink) {
        this.likesLink = likesLink;
        this.dislikesLink = dislikesLink;
    }

    public LikesDislikesInfo(boolean likesLink, boolean dislikesLink, Boolean grade) {
        this.likesLink = likesLink;
        this.dislikesLink = dislikesLink;
        this.grade = grade;
    }

    /*
     * Геттеры
     */
    public boolean isLikesLink() {
        return likesLink;
    }

    public boolean isDislikesLink() {
        return dislikesLink;
    }

    public Boolean getGrade() {
        return grade;
    }

    /*
     * Сеттеры
     */
    public void setLikesLink(boolean likesLink) {
        this.likesLink = likesLink;
    }

    public void setDislikesLink(boolean dislikesLink) {
        this.dislikesLink = dislikesLink;
    }

    public void setGrade(Boolean grade) {
        this.grade = grade;
    }

}