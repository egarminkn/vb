package org.verygroup.verybook.dto.index2;

public class HelpSlideItem {
    private String[] helpSlideRow1Column1Links;
    private String[] helpSlideRow1Column2Links;
    private String[] helpSlideRow1Column3Links;
    private String[] helpSlideRow2Column1Links;
    private String[] helpSlideRow2Column2Links;

    /*
     * Конструкторы
     */
    public HelpSlideItem() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public HelpSlideItem(String[] helpSlideRow1Column1Links, String[] helpSlideRow1Column2Links, String[] helpSlideRow1Column3Links, String[] helpSlideRow2Column1Links, String[] helpSlideRow2Column2Links) {
        this.helpSlideRow1Column1Links = helpSlideRow1Column1Links;
        this.helpSlideRow1Column2Links = helpSlideRow1Column2Links;
        this.helpSlideRow1Column3Links = helpSlideRow1Column3Links;
        this.helpSlideRow2Column1Links = helpSlideRow2Column1Links;
        this.helpSlideRow2Column2Links = helpSlideRow2Column2Links;
    }

    /*
     * Геттеры
     */
    public String[] getHelpSlideRow1Column1Links() {
        return helpSlideRow1Column1Links;
    }

    public String[] getHelpSlideRow1Column2Links() {
        return helpSlideRow1Column2Links;
    }

    public String[] getHelpSlideRow1Column3Links() {
        return helpSlideRow1Column3Links;
    }

    public String[] getHelpSlideRow2Column1Links() {
        return helpSlideRow2Column1Links;
    }

    public String[] getHelpSlideRow2Column2Links() {
        return helpSlideRow2Column2Links;
    }

    /*
     * Сеттеры
     */
    public void setHelpSlideRow1Column1Links(String[] helpSlideRow1Column1Links) {
        this.helpSlideRow1Column1Links = helpSlideRow1Column1Links;
    }

    public void setHelpSlideRow1Column2Links(String[] helpSlideRow1Column2Links) {
        this.helpSlideRow1Column2Links = helpSlideRow1Column2Links;
    }

    public void setHelpSlideRow1Column3Links(String[] helpSlideRow1Column3Links) {
        this.helpSlideRow1Column3Links = helpSlideRow1Column3Links;
    }

    public void setHelpSlideRow2Column1Links(String[] helpSlideRow2Column1Links) {
        this.helpSlideRow2Column1Links = helpSlideRow2Column1Links;
    }

    public void setHelpSlideRow2Column2Links(String[] helpSlideRow2Column2Links) {
        this.helpSlideRow2Column2Links = helpSlideRow2Column2Links;
    }
}