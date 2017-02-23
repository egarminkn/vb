package org.verygroup.verybook.dto.searchbook;

public class AudiobookAuthor implements Comparable<AudiobookAuthor> {
    private String id;
    private String name;
    private AudiobookAuthorType type;

    /*
     * Конструкторы
     */
    public AudiobookAuthor() {
        // нужен исключительно для задания типа этого класса в jsp через jsp:useBean
    }

    public AudiobookAuthor(String id, String name, AudiobookAuthorType type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    /*
     * Методы интерфейса Comparable
     */
    @Override
    public int compareTo(AudiobookAuthor audiobookAuthor) {
        if (this.equals(audiobookAuthor)) {
            return 0;
        }

        if (audiobookAuthor == null) {
            throw new IllegalArgumentException("aaudiobookAuthor couldn't be null");
        }

        if (this.getType() != audiobookAuthor.getType()) {
            if (this.getType() == AudiobookAuthorType.STORY_TELLER) {
                return 1;
            }
            return -1;
        }
        return this.getName().compareToIgnoreCase(audiobookAuthor.getName());
    }

    /*
     * Методы класса Object
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AudiobookAuthor that = (AudiobookAuthor) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        return type == that.type;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }

    /*
     * Геттеры
     */
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public AudiobookAuthorType getType() {
        return type;
    }

    /*
     * Сеттеры
     */
    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(AudiobookAuthorType type) {
        this.type = type;
    }
}