package org.verygroup.verybook;

public enum BookSubcategory {

    PRESCHOOLERS(BookCategory.EDUCATIONAL, "Дошкольникам"),
    PUPILS(BookCategory.EDUCATIONAL, "Школьникам и абитуриентам"),
    STUDENTS(BookCategory.EDUCATIONAL, "Студентам и аспирантам"),
    TEACHERS(BookCategory.EDUCATIONAL, "Педагогам"),

    LEISURE(BookCategory.CHILDREN, "Досуг и творчество"),
    PARENTS(BookCategory.CHILDREN, "Книги для родителей"),
    INFORMATIVE(BookCategory.CHILDREN, "Познавательная литература"),
    FICTION(BookCategory.CHILDREN, "Художественная литература"),

    BUSINESS_RIGHT_PSYCHOLOGY(BookCategory.BUSINESS, "Деловая литература. Право. Психология"),
    MARKETING(BookCategory.BUSINESS, "Маркетинг. Реклама"),
    MANAGEMENT(BookCategory.BUSINESS, "Менеджмент"),
    FINANCE_BANKING_INVESTMENTS(BookCategory.BUSINESS, "Финансы. Банковское дело. Инвестиции"),

    BIOGRAPHIES(BookCategory.FICTION, "Биографии. Мемуары"),
    DETECTIVES_FIGHTERS_THRILLERS(BookCategory.FICTION, "Детективы. Боевики. Триллеры"),
    POETRY(BookCategory.FICTION, "Поэзия"),
    PROSE(BookCategory.FICTION, "Проза"),
    FANTASTIC_FANTASY_MYSTIC(BookCategory.FICTION, "Фантастика. Фэнтези. Мистика"),

    ART(BookCategory.NON_FICTION, "Искусство. Культура"),
    COMPUTERS(BookCategory.NON_FICTION, "Компьютеры. Интернет"),
    COOKING(BookCategory.NON_FICTION, "Кулинария. Напитки"),
    MEDICINE(BookCategory.NON_FICTION, "Медицина"),
    SCIENCE_TECHNIQUE(BookCategory.NON_FICTION, "Наука. Техника"),
    SOCIAL(BookCategory.NON_FICTION, "Общественные и гуманитарные науки"),
    PSYCHOLOGY(BookCategory.NON_FICTION, "Психология"),
    PUBLICISM(BookCategory.NON_FICTION, "Публицистика"),
    TRAVEL_HOBBY_PHOTO_SPORT(BookCategory.NON_FICTION, "Путешествия. Хобби. Фото. Спорт"),
    RELIGIONS(BookCategory.NON_FICTION, "Религии мира"),
    NEEDLEWORK_CREATION(BookCategory.NON_FICTION, "Рукоделие. Творчество"),
    ESOTERICS(BookCategory.NON_FICTION, "Эзотерика");

    private BookCategory category;
    private String value;

    BookSubcategory(BookCategory category, String value) {
        this.category = category;
        this.value = value;
    }

    public BookCategory getCategory() {
        return category;
    }

    public String getValue() {
        return value;
    }

}