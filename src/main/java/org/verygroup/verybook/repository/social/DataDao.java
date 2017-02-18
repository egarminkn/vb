package org.verygroup.verybook.repository.social;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class DataDao {

    private static final Logger LOG = LoggerFactory.getLogger(DataDao.class);

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public DataDao(@Qualifier("dataSourceSocial") DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public String getData(String userId) {
        try {
            LOG.debug("SQL SELECT ON: {}", userId);
            return jdbcTemplate.queryForObject("select data from Data where userId = ?",
                new RowMapper<String>() {
                    public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                    String data = rs.getString("data");
                    LOG.debug("SQL SELECT RETURN: {}", data);
                    return data;
                    }
                }, userId);
        } catch (EmptyResultDataAccessException ex) {
            return null;
        }
    }

    public void setData(String userId, String data) {
        if (getData(userId) == null) {
            LOG.debug("SQL INSERT ON: {}, data = {}", userId, data);
            jdbcTemplate.update("INSERT into data (userId, data) VALUES(?,?)", userId, data);
        } else {
            LOG.debug("SQL UPDATE ON: {}, data = {}", userId, data);
            jdbcTemplate.update("UPDATE data SET data = ? WHERE userId = ?", data, userId);
        }
    }

}