package org.verygroup.verybook;

public enum BookGenre {
    MILITARY("военные"),
    DETECTIVE("детектив"),
    ADVENTURES("приключения"),
    DRAMA("драма"),
    COMEDY("комедия"),
    TRAGEDY("трагедия"),
    POEM("поэма"),
    FAIRY_TALE("сказка"),
    NOVEL("роман"),
    NOVELLA("новелла"),
    FABLE("басня"),
    BYLINA("былина"),
    BALLAD("баллада"),
    MYTH("миф"),
    STORY("повесть"),
    NARRATION("рассказ"),
    PARODY("пародия"),
    SKETCH("очерк"),
    ESSAY("эссе"),
    PLAY("пьеса"),
    ODE("ода"),
    OPUS("опус");

    private String genreName;

    /*
     * Конструкторы
     */
    BookGenre(String genreName) {
        this.genreName = genreName;
    }

    /*
     * Геттеры
     */
    public String getGenreName() {
        return genreName;
    }
}