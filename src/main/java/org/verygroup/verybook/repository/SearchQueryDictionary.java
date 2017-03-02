package org.verygroup.verybook.repository;

public class SearchQueryDictionary {

    /*
     * Для всех этих констант есть соответствующие enum-ы
     */

    // фильтрация (WHERE в SQL)
    public static final String CATEGORY = "category";
    public static final String SUBCATEGORY = "subcategory";
    public static final String GENRE = "genre";
    public static final String TYPE = "type";

    // сортировка (ORDER BY в SQL)
    public static final String SORT_BY = "sort-by";
    public static final String SORT_DIRECTION = "sort-direction";

}