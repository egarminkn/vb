package org.verygroup.verybook;

public enum RatingSubcategory {

    /**
     * Всегда нужно помнить о корреляции этого enum-а с enum-ами
     * BookGenre, BookCategory и BookSubcategory.
     * Они - первичны, а RatingCategory и RatingSubcategory - вторичны
     */

    PRESCHOOLERS(RatingCategory.EDUCATIONAL, "Дошкольникам"),
    PUPILS(RatingCategory.EDUCATIONAL, "Школьникам и абитуриентам"),
    STUDENTS(RatingCategory.EDUCATIONAL, "Студентам и аспирантам"),
    TEACHERS(RatingCategory.EDUCATIONAL, "Педагогам"),

    LEISURE(RatingCategory.CHILDREN, "Досуг и творчество"),
    PARENTS(RatingCategory.CHILDREN, "Книги для родителей"),
    INFORMATIVE(RatingCategory.CHILDREN, "Познавательная литература"),
    FICTION(RatingCategory.CHILDREN, "Художественная литература"),

    BUSINESS_RIGHT_PSYCHOLOGY(RatingCategory.BUSINESS, "Деловая литература. Право. Психология"),
    MARKETING(RatingCategory.BUSINESS, "Маркетинг. Реклама"),
    MANAGEMENT(RatingCategory.BUSINESS, "Менеджмент"),
    FINANCE_BANKING_INVESTMENTS(RatingCategory.BUSINESS, "Финансы. Банковское дело. Инвестиции"),

    BIOGRAPHIES(RatingCategory.FICTION, "Биографии. Мемуары"),
    DETECTIVES_FIGHTERS_THRILLERS(RatingCategory.FICTION, "Детективы. Боевики. Триллеры"),
    POETRY(RatingCategory.FICTION, "Поэзия"),
    PROSE(RatingCategory.FICTION, "Проза"),
    FANTASTIC_FANTASY_MYSTIC(RatingCategory.FICTION, "Фантастика. Фэнтези. Мистика"),

    ART(RatingCategory.NON_FICTION, "Искусство. Культура"),
    COMPUTERS(RatingCategory.NON_FICTION, "Компьютеры. Интернет"),
    COOKING(RatingCategory.NON_FICTION, "Кулинария. Напитки"),
    MEDICINE(RatingCategory.NON_FICTION, "Медицина"),
    SCIENCE_TECHNIQUE(RatingCategory.NON_FICTION, "Наука. Техника"),
    SOCIAL(RatingCategory.NON_FICTION, "Общественные и гуманитарные науки"),
    PSYCHOLOGY(RatingCategory.NON_FICTION, "Психология"),
    PUBLICISM(RatingCategory.NON_FICTION, "Публицистика"),
    TRAVEL_HOBBY_PHOTO_SPORT(RatingCategory.NON_FICTION, "Путешествия. Хобби. Фото. Спорт"),
    RELIGIONS(RatingCategory.NON_FICTION, "Религии мира"),
    NEEDLEWORK_CREATION(RatingCategory.NON_FICTION, "Рукоделие. Творчество"),
    ESOTERICS(RatingCategory.NON_FICTION, "Эзотерика"),

    MILITARY(RatingCategory.GENRES, "Военные"),
    DETECTIVE(RatingCategory.GENRES, "Детектив"),
    ADVENTURES(RatingCategory.GENRES, "Приключения"),
    DRAMA(RatingCategory.GENRES, "Драма"),
    COMEDY(RatingCategory.GENRES, "Комедия"),
    TRAGEDY(RatingCategory.GENRES, "Трагедия"),
    POEM(RatingCategory.GENRES, "Поэма"),
    FAIRY_TALE(RatingCategory.GENRES, "Сказка"),
    NOVEL(RatingCategory.GENRES, "Роман"),
    NOVELLA(RatingCategory.GENRES, "Новелла"),
    FABLE(RatingCategory.GENRES, "Басня"),
    BYLINA(RatingCategory.GENRES, "Былина"),
    BALLAD(RatingCategory.GENRES, "Баллада"),
    MYTH(RatingCategory.GENRES, "Миф"),
    STORY(RatingCategory.GENRES, "Повесть"),
    NARRATION(RatingCategory.GENRES, "Рассказ"),
    PARODY(RatingCategory.GENRES, "Пародия"),
    SKETCH(RatingCategory.GENRES, "Очерк"),
    ESSAY(RatingCategory.GENRES, "Эссе"),
    PLAY(RatingCategory.GENRES, "Пьеса"),
    ODE(RatingCategory.GENRES, "Ода"),
    OPUS(RatingCategory.GENRES, "Опус");

    private RatingCategory category;
    private String value;

    RatingSubcategory(RatingCategory category, String value) {
        this.category = category;
        this.value = value;
    }

    public RatingCategory getCategory() {
        return category;
    }

    public String getValue() {
        return value;
    }

}