package org.verygroup.verybook.util;

import javax.servlet.jsp.JspWriter;

import java.io.IOException;
import java.io.StringWriter;

import org.apache.commons.lang3.StringEscapeUtils;

public class JspWriterImpl extends JspWriter {

    private static final String LINE_SEPARATOR = System.getProperty("line.separator");

    private StringWriter writer;

    public JspWriterImpl() {
        super(0, true);
        writer = new StringWriter();
    }

    @Override
    public void newLine() throws IOException {
        writer.write(LINE_SEPARATOR);
    }

    @Override
    public void print(boolean b) throws IOException {
        writer.write(String.valueOf(b));
    }

    @Override
    public void print(char c) throws IOException {
        writer.write(String.valueOf(c));
    }

    @Override
    public void print(int i) throws IOException {
        writer.write(i);
    }

    @Override
    public void print(long l) throws IOException {
        writer.write(String.valueOf(l));
    }

    @Override
    public void print(float f) throws IOException {
        writer.write(String.valueOf(f));
    }

    @Override
    public void print(double d) throws IOException {
        writer.write(String.valueOf(d));
    }

    @Override
    public void print(char[] chars) throws IOException {
        writer.write(chars);
    }

    @Override
    public void print(String s) throws IOException {
        if (s == null) {
            s = "null";
        }
        writer.write(s);
    }

    @Override
    public void print(Object o) throws IOException {
        writer.write(String.valueOf(o));
    }

    @Override
    public void println() throws IOException {
        newLine();
    }

    @Override
    public void println(boolean b) throws IOException {
        print(b);
        println();
    }

    @Override
    public void println(char c) throws IOException {
        print(c);
        println();
    }

    @Override
    public void println(int i) throws IOException {
        print(i);
        println();
    }

    @Override
    public void println(long l) throws IOException {
        print(l);
        println();
    }

    @Override
    public void println(float f) throws IOException {
        print(f);
        println();
    }

    @Override
    public void println(double d) throws IOException {
        print(d);
        println();
    }

    @Override
    public void println(char[] chars) throws IOException {
        print(chars);
        println();
    }

    @Override
    public void println(String s) throws IOException {
        print(s);
        println();
    }

    @Override
    public void println(Object o) throws IOException {
        print(o);
        println();
    }

    @Override
    public final void clear() throws IOException {
        writer = new StringWriter();
    }

    @Override
    public void clearBuffer() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void write(char[] chars, int off, int len) throws IOException {
        writer.write(chars, off, len);
    }

    @Override
    public void flush() throws IOException {
        writer.flush();
    }

    @Override
    public void close() throws IOException {
        writer.close();
    }

    @Override
    public int getRemaining() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
        // Нужно обязательно заэкранировать все html теги
        return StringEscapeUtils.escapeHtml4(writer.toString().trim().replaceAll(LINE_SEPARATOR, ""));
    }

}