package com.fps.configurations.template;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class TilesConfiguration {
    @Bean
    public TilesConfigurer tilesConfigurer() {
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions(
                "/WEB-INF/views/**/tiles-defs/tiles-defs.xml",
                "/WEB-INF/views/**/tiles-defs/tiles-defs_orders.xml",
                "/WEB-INF/views/**/tiles-defs/tiles-defs_roles.xml");
        tilesConfigurer.setCheckRefresh(true);
        tilesConfigurer.setValidateDefinitions(true);

        return tilesConfigurer;
    }

    @Bean
    public TilesViewResolver tilesViewResolver() {
        final TilesViewResolver resolver = new TilesViewResolver();
        resolver.setViewClass(TilesView.class);

        return resolver;
    }
}
