package com.fps.configurations.db;

import java.io.Serializable;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CustomTableNamingConfiguration
		extends org.springframework.boot.orm.jpa.hibernate.SpringPhysicalNamingStrategy implements Serializable {

	/**
	 * Create table name with prefix value
	 */
	private static final long serialVersionUID = -2671839217093809865L;
	public static final CustomTableNamingConfiguration INSTANCE = new CustomTableNamingConfiguration();

	@Value("${app.table.naming.strategy.prefix}")
	private String tblNamingPrefix;

	@Override
	public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment jdbcEnvironment) {
		String tableName = tblNamingPrefix + name.getText().toUpperCase();
		return new Identifier(tableName, true);
	}

}
