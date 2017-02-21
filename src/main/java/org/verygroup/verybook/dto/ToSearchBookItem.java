package org.verygroup.verybook.dto;

import java.util.Arrays;
import java.util.List;

public class ToSearchBookItem {

    private String topLevelTitle;
    private List<String> bottomLevelTitles;

    /*
     * Конструкторы
     */
    public ToSearchBookItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public ToSearchBookItem(String topLevelTitle, String... bottomLevelTitles) {
        this.topLevelTitle = topLevelTitle;
        this.bottomLevelTitles = Arrays.asList(bottomLevelTitles);
    }

    /*
     * Геттеры
     */
    public String getTopLevelTitle() {
        return topLevelTitle;
    }

    public List<String> getBottomLevelTitles() {
        return bottomLevelTitles;
    }

    /*
     * Сеттеры
     */
    public void setTopLevelTitle(String topLevelTitle) {
        this.topLevelTitle = topLevelTitle;
    }

    public void setBottomLevelTitles(List<String> bottomLevelTitles) {
        this.bottomLevelTitles = bottomLevelTitles;
    }

}